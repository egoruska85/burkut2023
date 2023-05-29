class CreateConatcts < ActiveRecord::Migration[7.0]
  def change
    create_table :conatcts do |t|
      t.string :email
      t.string :address_ru
      t.string :address_en
      t.string :address_tm
      t.integer :phone

      t.timestamps
    end
  end
end
