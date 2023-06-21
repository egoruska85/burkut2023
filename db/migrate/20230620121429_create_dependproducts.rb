class CreateDependproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :dependproducts do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
