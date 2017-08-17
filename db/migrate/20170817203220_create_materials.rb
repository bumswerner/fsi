class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :name
      t.text :discription
      t.attachment :data
      t.references :section, foreign_key: true

      t.timestamps
    end
   # change_column(:materials, :id, :bigint)
  end
end
