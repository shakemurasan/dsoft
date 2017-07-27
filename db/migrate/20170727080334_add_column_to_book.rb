class AddColumnToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :current, :bool, null: false, after: :order_at, default: false
  end
end
