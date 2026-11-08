import { Controller } from "@hotwired/stimulus"

// 旅先診断：1問ずつ表示し、進捗バーと「次へ」「前へ」を制御する
// JavaScriptが無効な場合は全問がそのまま表示され、通常のフォームとして送信できる
export default class extends Controller {
  static targets = ["step", "bar", "dot", "current", "answered", "prev", "next", "submit", "note"]

  connect() {
    this.index = this.firstUnansweredIndex()
    this.element.classList.add("is-enhanced")
    this.render()
  }

  select(event) {
    if (event.target.type !== "radio") return

    this.noteTarget.hidden = true
    this.render()

    // 最後の質問以外は、選んだら自動で次へ
    if (this.index < this.stepTargets.length - 1) {
      clearTimeout(this.timer)
      this.timer = setTimeout(() => this.go(this.index + 1), 320)
    }
  }

  next() {
    if (!this.isAnswered(this.index)) {
      this.noteTarget.hidden = false
      return
    }
    this.go(this.index + 1)
  }

  prev() {
    this.go(this.index - 1)
  }

  go(index) {
    clearTimeout(this.timer)
    this.index = Math.max(0, Math.min(index, this.stepTargets.length - 1))
    this.render()
    const heading = this.stepTargets[this.index].querySelector(".quiz-q-text")
    if (heading) heading.focus({ preventScroll: true })
    this.element.scrollIntoView({ behavior: "smooth", block: "start" })
  }

  render() {
    const total = this.stepTargets.length
    const answered = this.stepTargets.filter((_, i) => this.isAnswered(i)).length
    const isLast = this.index === total - 1

    this.stepTargets.forEach((step, i) => {
      step.classList.toggle("is-active", i === this.index)
    })

    this.dotTargets.forEach((dot, i) => {
      dot.classList.toggle("is-current", i === this.index)
      dot.classList.toggle("is-done", this.isAnswered(i))
    })

    this.barTarget.style.width = `${(answered / total) * 100}%`
    this.currentTarget.textContent = this.index + 1
    this.answeredTarget.textContent = answered

    this.prevTarget.hidden = this.index === 0
    this.nextTarget.hidden = isLast
    this.nextTarget.disabled = !this.isAnswered(this.index)
    this.submitTarget.hidden = !isLast
    this.submitTarget.disabled = answered < total
  }

  isAnswered(i) {
    return !!this.stepTargets[i].querySelector("input[type=radio]:checked")
  }

  firstUnansweredIndex() {
    const i = this.stepTargets.findIndex((_, idx) => !this.isAnswered(idx))
    return i === -1 ? this.stepTargets.length - 1 : i
  }

  disconnect() {
    clearTimeout(this.timer)
  }
}
