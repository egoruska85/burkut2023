class CreateContactdetails < ActiveRecord::Migration[7.0]
  def change
    create_table :contactdetails do |t|
      t.string :email1
      t.string :email2
      t.string :email3
      t.string :address_ru
      t.string :address_en
      t.string :address_tm
      t.integer :phone1
      t.integer :phone2
      t.integer :phone3
      t.integer :phone4

      t.timestamps
    end
  end
end
