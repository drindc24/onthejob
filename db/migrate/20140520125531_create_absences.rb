class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.integer :employee_id
      t.integer :department_id
      t.integer :leave_type_id
      t.date :date_filed
      t.date :start_date
      t.date :end_date
      t.decimal :total_hours, :precision => 3, :scale => 1
      t.string :status
      t.text :reasons

      t.timestamps
    end
  end
end
