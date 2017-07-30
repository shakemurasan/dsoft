# ## Schema Information
#
# Table name: `categories`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`label`**       | `string`           | `not null`
# **`color_code`**  | `string`           | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

class Category < ApplicationRecord
  has_many :book_categories
  has_many :books, through: :book_categories

  validates :color_code, format: { with: /\A\#[0-9a-fA-F]{6}\z/ }
end
