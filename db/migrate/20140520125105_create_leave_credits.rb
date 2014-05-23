class CreateLeaveCredits < ActiveRecord::Migration
  def change
    create_table :leave_credits do |t|
      t.integer :employee_id
      t.integer :leave_type_id
      t.decimal :count, :precision => 3, :scale => 1

      t.timestamps
    end
  end
end
