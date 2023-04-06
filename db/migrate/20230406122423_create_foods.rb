class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false, default: ''
      t.text :description, null: false, default: ''
      t.integer :price_without_tax, null: false
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end
