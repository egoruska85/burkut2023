class CreateFactorycarouusels < ActiveRecord::Migration[7.0]
  def change
    create_table :factorycarouusels do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm
      t.string :desc_ru
      t.string :desc_en
      t.string :desc_tm
      t.string :link

      t.timestamps
    end
  end
end
