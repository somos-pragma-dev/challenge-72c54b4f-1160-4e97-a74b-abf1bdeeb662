class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, null: false, precision: 8, scale: 2
      t.integer :stock, null: false
      t.string :category, null: false
      t.timestamps
    end

    add_index :products, :name, unique: true
  end
end