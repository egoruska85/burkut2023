class CreateFactoryabouts < ActiveRecord::Migration[7.0]
  def change
    create_table :factoryabouts do |t|
      t.string :name
      t.string :service_ru
      t.string :service_en
      t.string :service_tm
      t.text :body_ru
      t.text :body_en
      t.text :body_tm

      t.timestamps
    end
  end
end
