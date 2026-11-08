class AddCategoryToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :location, :string
  end
end
