class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :product_category, foreign_key: true
      t.string :name, null: false
      t.float :price, null: false
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
