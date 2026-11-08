class TestsController < ApplicationController

  # 診断ページ
  def new
    @test = Test.new
  end

  # 診断結果を保存
  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to test_path(@test)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # 診断結果
  def show
    @test = Test.find(params[:id])

    # ① 7つのPaletteの点数
    @scores = {
      "culture" => 0,
      "nature" => 0,
      "adventure" => 0,
      "relax" => 0,
      "local" => 0,
      "city" => 0,
      "art" => 0
    }

    # ② Q1〜Q7を集計
    (1..7).each do |i|

      answer = @test.send("question#{i}")

      next if answer.blank?

      answer.split(",").each do |type|

        if @scores.key?(type)
          @scores[type] += 1
        end

      end

    end

    # ③ 割合を計算
    total_score = @scores.values.sum

    @percentages = {}

    @scores.each do |type, score|

      if total_score > 0
        @percentages[type] =
          ((score.to_f / total_score) * 100).round
      else
        @percentages[type] = 0
      end

    end

    # ④ 一番高いタイプ
    @top_type =
      @percentages.max_by { |type, percentage| percentage }[0]

    # ⑤ 旅タイプ
    @travel_type = travel_type_info(@top_type)

    # ⑥ 国とのマッチ度
    @country_result =
    calculate_country_match(@percentages, @test)

   # ⑦ 国の詳細ページ用
   @country = Country.find_by(country: @country_result) 

  end


  private

  # Strong Parameters
  def test_params

    params.require(:test).permit(
      :question1,
      :question2,
      :question3,
      :question4,
      :question5,
      :question6,
      :question7
    )

  end

  # 旅タイプの名前
  def travel_type_info(type)

    case type

    when "culture"
     { 
       name:"時を超えた冒険家",
       description:"あなたが惹かれるのは、今この瞬間だけではありません。何百年、何千年もの時を超えて残る遺跡や街並み、その土地の物語に心を奪われるタイプです。実際にその場所に立った瞬間、「ここで誰かが生きていたんだ」と歴史が一気に身近になる、そんな時間を旅するような冒険があなたを待っています。"
    }

    when "nature"
      {
        name:"大自然の探検家",
        description:"都会の喧騒を離れた時、あなたの心は一番自由になります。目の前に広がる果てしない大地、息をのむほど青い海、山の向こうに沈んでいく夕日。写真では伝わらないスケールの景色を自分の目で見た瞬間、きっと「ここまで来てよかった」と思えるはず。次の旅は、地図の向こうにある大自然へ"
    }

    when "adventure"
      {
       name:"未知へのチャレンジャー",
       description:"「知らないからこそ、行ってみたい。」そんな好奇心があなたの旅を動かします。予定通りにいかない出来事さえ、あとから振り返れば最高の思い出。初めて見る景色、初めて食べる料理、初めて出会う人など...旅先での「初めて」を重ねるほど、あなたの世界はどんどん広がっていきます。次に待っているのは、まだ知らないあなた自身かもしれません"
      }

    when "relax"
      {
        name:"癒しを求める旅人",
        description:"あなたの旅に必要なのは、予定を詰め込むことではありません。朝はゆっくり目を覚まし、好きな景色を眺めながら過ごし、夕方には美しい夕日を見に行く。時間に追われず、「今日は何もしなくていい」と思える瞬間こそ、あなたにとって最高の旅です。日常から少しだけ離れて、自分自身を取り戻す旅へ出かけてみませんか？"
      }
      

    when "local"
      {
        name:"現地を愛する旅人",
        description:"あなたが本当に知りたいのは、観光地だけではありません。その街で暮らす人々の生活、道端から聞こえる会話、スーパーに並ぶ見慣れない食べ物。ガイドブックには載っていない「その土地の日常」にこそ、旅の面白さを感じるタイプです。観光だけでは終わらない、その街の一員になったような旅が、あなたを待っています。"
      }

    when "city"
      {
        name:"トレンドハンター",
        description:"新しいものを見つけるたびに、心が少し高鳴るあなた。話題のカフェ、最先端のショップ、世界中から集まる人々。歩いているだけで次々と新しい刺激が飛び込んでくる都会は、あなたにとって巨大な遊び場です。「これ好き！」と思える瞬間を探しながら、街の最新トレンドを追いかける旅に出かけましょう。"
      }

    when "art"
    {
      name:"美を追い求める旅人",
      description: "美しいものを見ると、思わず立ち止まってしまうあなた。美術館や歴史ある建物はもちろん、街並みやカフェ、細かな装飾まで、旅先では気になるものがたくさん見つかりそう。写真を撮ったり、気に入った場所をゆっくり眺めたりしながら、その土地ならではの美しさを楽しむ旅がおすすめです。"
    }

    end

  end

  # 国とのマッチ度を計算
  def calculate_country_match(percentages, test)

    countries = {

  "ニュージーランド" => {
  "culture" => 5,
  "nature" => 35,
  "adventure" => 30,
  "relax" => 15,
  "local" => 5,
  "city" => 5,
  "art" => 5
},

"ベトナム" => {
  "culture" => 15,
  "nature" => 10,
  "adventure" => 10,
  "relax" => 15,
  "local" => 30,
  "city" => 10,
  "art" => 10
},

"カンボジア" => {
  "culture" => 30,
  "nature" => 15,
  "adventure" => 20,
  "relax" => 10,
  "local" => 15,
  "city" => 5,
  "art" => 5
},

"マレーシア" => {
  "culture" => 15,
  "nature" => 10,
  "adventure" => 10,
  "relax" => 15,
  "local" => 20,
  "city" => 20,
  "art" => 10
},

"韓国" => {
  "culture" => 10,
  "nature" => 5,
  "adventure" => 5,
  "relax" => 10,
  "local" => 20,
  "city" => 30,
  "art" => 20
},

"中国" => {
  "culture" => 30,
  "nature" => 15,
  "adventure" => 10,
  "relax" => 10,
  "local" => 15,
  "city" => 10,
  "art" => 10
},

"イギリス" => {
  "culture" => 25,
  "nature" => 10,
  "adventure" => 5,
  "relax" => 10,
  "local" => 10,
  "city" => 25,
  "art" => 15
},

"ノルウェー" => {
  "culture" => 10,
  "nature" => 35,
  "adventure" => 10,
  "relax" => 20,
  "local" => 5,
  "city" => 5,
  "art" => 15
},

"イタリア" => {
  "culture" => 25,
  "nature" => 10,
  "adventure" => 5,
  "relax" => 10,
  "local" => 20,
  "city" => 5,
  "art" => 25
},

"タイ" => {
  "culture" => 15,
  "nature" => 15,
  "adventure" => 10,
  "relax" => 20,
  "local" => 25,
  "city" => 10,
  "art" => 5
},

"インドネシア" => {
  "culture" => 20,
  "nature" => 20,
  "adventure" => 15,
  "relax" => 15,
  "local" => 20,
  "city" => 5,
  "art" => 5
}

    }

    # 国ごとの点数
    country_scores = {}


    countries.each do |country, country_palette|

      score = 0


      percentages.each do |type, user_percentage|

        country_percentage = country_palette[type]

        score += user_percentage * (country_percentage / 100.0)

      end

      # 国ごとの計算結果を保存
      country_scores[country] = score

    end

    # 一番マッチした国
    best_country =
      country_scores.max_by { |country, score| score }
    
     best_country[0]
    
  end

end