# ## Schema Information
#
# Table name: `books`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`title`**       | `string`           |
# **`contents`**    | `text`             |
# **`image_path`**  | `string`           |
# **`order_at`**    | `datetime`         |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
# **`current`**     | `boolean`          | `default(FALSE), not null`
#

class Book < ApplicationRecord
  has_many :book_categories
  has_many :categories, through: :book_categories

  accepts_nested_attributes_for :book_categories
end
