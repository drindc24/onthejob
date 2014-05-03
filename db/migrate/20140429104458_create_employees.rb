class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :encrypted_password
      t.date :date_of_birth
      t.string :gender
      t.integer :level
      t.string :emergency_contact
      t.string :civil_status
      t.string :address
      t.string :tin
      t.string :pagibig
      t.string :philhealth
      t.string :telephone_number
      t.string :mobile_number

      t.timestamps
    end
  end
end
