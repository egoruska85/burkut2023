class CreateMaincarousels < ActiveRecord::Migration[7.0]
  def change
    create_table :maincarousels do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm
      t.string :link
      t.string :body_ru
      t.string :body_en
      t.string :body_tm

      t.timestamps
    end
  end
end
