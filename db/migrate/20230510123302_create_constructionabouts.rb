class CreateConstructionabouts < ActiveRecord::Migration[7.0]
  def change
    create_table :constructionabouts do |t|
      t.string :title_organization
      t.string :motto_ru
      t.string :motto_en
      t.string :motto_tm
      t.text :about_ru
      t.text :about_en
      t.text :about_tm
      t.text :vision_ru
      t.text :vision_en
      t.text :vision_tm
      t.text :values_ru
      t.text :values_en
      t.text :values_tm

      t.timestamps
    end
  end
end
