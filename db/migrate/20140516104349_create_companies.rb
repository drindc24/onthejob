class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :full_name
      t.date :date_founded
      t.string :business_address
      t.string :business_phone
      t.string :status
      t.string :fax_number
      t.string :slug

      t.timestamps
    end
  end
end
