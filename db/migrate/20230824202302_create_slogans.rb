class CreateSlogans < ActiveRecord::Migration[7.0]
  def change
    create_table :slogans do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm

      t.timestamps
    end
  end
end
