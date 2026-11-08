class AddRegionToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :region, :string
  end
end
