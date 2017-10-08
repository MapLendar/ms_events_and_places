class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :site_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :owner_id

      t.timestamps
    end
  end
end
