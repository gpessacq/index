class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.references :item, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
