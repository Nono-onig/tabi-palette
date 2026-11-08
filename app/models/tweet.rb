class Tweet < ApplicationRecord
    belongs_to :country, optional: true
    belongs_to :user
    
    has_many :tweet_tag_relations, dependent: :destroy
    has_many :tags, through: :tweet_tag_relations, dependent: :destroy
    
    has_one_attached :image 
end
