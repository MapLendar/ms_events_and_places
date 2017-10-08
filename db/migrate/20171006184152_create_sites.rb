class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.string :image

      t.timestamps
    end
  end
end
