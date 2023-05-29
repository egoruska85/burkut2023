class CreateConstructioncertificates < ActiveRecord::Migration[7.0]
  def change
    create_table :constructioncertificates do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm
      t.text :body_ru
      t.text :body_en
      t.text :body_tm

      t.timestamps
    end
  end
end
