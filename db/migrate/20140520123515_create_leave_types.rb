class CreateLeaveTypes < ActiveRecord::Migration
  def change
    create_table :leave_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
