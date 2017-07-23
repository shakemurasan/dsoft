class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :contents
      t.string :image_path
      t.datetime :order_at

      t.timestamps
    end
  end
end
