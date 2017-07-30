class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :label, null: false
      t.string :color_code, null: false

      t.timestamps
    end
  end
end
