class CreatePictureheaderonprojects < ActiveRecord::Migration[7.0]
  def change
    create_table :pictureheaderonprojects do |t|

      t.timestamps
    end
  end
end
