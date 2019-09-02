class CreateTeddies < ActiveRecord::Migration[5.2]
  def change
    create_table :teddies do |t|
      t.string :sku
      t.string :name
      t.references :category, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end
