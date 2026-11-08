class CreateCountries < ActiveRecord::Migration[7.2]
  def change
    create_table :countries do |t|
      t.string :country
      t.text :description
      t.text :price
      t.text :visa_timing
      t.text :preparation
      t.text :useful_items
      t.text :transportation
      t.text :cautions

      t.timestamps
    end
  end
end
