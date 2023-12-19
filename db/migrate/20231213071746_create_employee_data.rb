class CreateEmployeeData < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_data do |t|
      t.string :name
      t.string :role
      t.decimal :salary

      t.timestamps
    end
  end
end
