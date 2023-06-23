class CreateFactorycertificates < ActiveRecord::Migration[7.0]
  def change
    create_table :factorycertificates do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm
      t.text :desc_ru
      t.text :desc_en
      t.text :desc_tm

      t.timestamps
    end
  end
end
