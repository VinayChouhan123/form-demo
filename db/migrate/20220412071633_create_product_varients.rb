class CreateProductVarients < ActiveRecord::Migration[6.0]
  def change
    create_table :product_varients do |t|
      t.string :color
      t.integer :size
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
