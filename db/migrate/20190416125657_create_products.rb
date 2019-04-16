class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_type, foreign_key: true
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
