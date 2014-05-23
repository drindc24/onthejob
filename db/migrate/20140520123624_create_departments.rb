class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :department_head_id
      t.integer :company_id

      t.timestamps
    end
  end
end
