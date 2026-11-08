class Country < ApplicationRecord
  has_many :tweets

  # 公式サイトのURL（http / https のみ許可。javascript: などは表示しない）
  def official_url
    uri = URI.parse(link.to_s)
    uri.to_s if uri.is_a?(URI::HTTP) && uri.host.present?
  rescue URI::InvalidURIError
    nil
  end
end
