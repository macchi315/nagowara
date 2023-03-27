class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :live_name
      t.string :place
      t.datetime :start_time
      t.string :guest
      t.string :price
      t.text :image
      t.timestamps
    end
  end
end
