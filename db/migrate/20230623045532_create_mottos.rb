class CreateMottos < ActiveRecord::Migration[7.0]
  def change
    create_table :mottos do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm

      t.timestamps
    end
  end
end
