module ApplicationHelper
  # 国名（日本語）と画像ファイルの対応表
  COUNTRY_IMAGES = {
    "ニュージーランド" => "newzealand.jpg",
    "ベトナム" => "vietnam.jpg",
    "カンボジア" => "cambodia.jpg",
    "マレーシア" => "malaysia.jpg",
    "韓国" => "korea.jpg",
    "中国" => "china.jpg",
    "イギリス" => "uk.jpg",
    "ノルウェー" => "norway.jpg",
    "イタリア" => "italy.jpg",
    "タイ" => "thailand.jpg",
    "インドネシア" => "indonesia.jpg"
  }.freeze

  # size: :web（大きめ, 1600px） / :thumb（カード用, 800px）
  def country_image_path(country_name, size: :web)
    file = COUNTRY_IMAGES[country_name]
    return nil unless file

    asset_path("#{size == :thumb ? 'thumbs' : 'web'}/#{file}")
  end

  # 診断の7タイプ（結果ページの表示用）
  PALETTE_TYPES = [
    { key: "culture",   label: "Culture",   ja: "歴史・文化", icon: "🏛️" },
    { key: "nature",    label: "Nature",    ja: "大自然",     icon: "🌿" },
    { key: "adventure", label: "Adventure", ja: "冒険",       icon: "🧭" },
    { key: "relax",     label: "Relax",     ja: "癒し",       icon: "🌸" },
    { key: "local",     label: "Local",     ja: "ローカル",   icon: "🍜" },
    { key: "city",      label: "City",      ja: "都会",       icon: "🏙️" },
    { key: "art",       label: "Art",       ja: "アート",     icon: "🎨" }
  ].freeze
end
