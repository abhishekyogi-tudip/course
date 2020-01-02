class CreateStudents < ActiveRecord::Migration[5.0]
  def up
    create_table :students do |t|
      t.string :name
      t.integer :age, null: false
      t.datetime :created_at

      t.timestamps
    end
  end
  def down
    drop_table :students
  end
end
