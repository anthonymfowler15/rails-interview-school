class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.text :name
      t.integer :student_type, :default => Student::Type::DEFAULT
      t.references :teacher
    end
  end
end
