class AddVisaUrlToCountries < ActiveRecord::Migration[7.2]
  def change
    add_column :countries, :link, :string
  end
end
