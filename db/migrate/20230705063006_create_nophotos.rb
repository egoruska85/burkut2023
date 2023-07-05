class CreateNophotos < ActiveRecord::Migration[7.0]
  def change
    create_table :nophotos do |t|

      t.timestamps
    end
  end
end
