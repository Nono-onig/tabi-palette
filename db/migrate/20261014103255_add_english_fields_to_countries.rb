class AddEnglishFieldsToCountries < ActiveRecord::Migration[7.2]
  def change
    add_column :countries, :country_en, :string
    add_column :countries, :description_en, :text
    add_column :countries, :price_en, :text
    add_column :countries, :visa_timing_en, :text
    add_column :countries, :preparation_en, :text
    add_column :countries, :useful_items_en, :text
    add_column :countries, :transportation_en, :text
    add_column :countries, :cautions_en, :text
  end
end
