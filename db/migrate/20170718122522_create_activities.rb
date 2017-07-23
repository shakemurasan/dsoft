class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :times, null: true
      t.string :alias_title, null: true
      t.text :contents, null: false
      t.string :image_path, null: true
      t.datetime :order_at, null: false

      t.timestamps

      t.index :times, unique: true
      t.index :alias_title, unique: true
      t.index :image_path, unique: true
    end
  end
end
