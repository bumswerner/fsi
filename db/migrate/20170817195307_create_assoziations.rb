class CreateAssoziations < ActiveRecord::Migration[5.1]
  def change
    create_table :assoziations do |t|
      t.string :code
      t.string :instructor
      t.references :category, foreign_key: true
      t.references :course, foreign_key: true
      t.references :lecture, foreign_key: true

      t.timestamps
    end
  end
end
