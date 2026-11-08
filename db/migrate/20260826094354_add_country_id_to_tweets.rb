class AddCountryIdToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :country_id, :integer
  end
end
