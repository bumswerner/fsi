class CreateCoursetypes < ActiveRecord::Migration[5.1]
  def change
    create_table :coursetypes do |t|
      t.string :name
      t.string :symbol
      t.text :description

      t.timestamps
    end
  end
end
