class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :country
      t.string :place
      t.text :cost
      t.string :picture
      t.text :comment
      t.text :recommendation

      t.timestamps
    end
  end
end
