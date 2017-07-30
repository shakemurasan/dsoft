# ## Schema Information
#
# Table name: `book_categories`
#
# ### Columns
#
# Name               | Type               | Attributes
# ------------------ | ------------------ | ---------------------------
# **`id`**           | `integer`          | `not null, primary key`
# **`book_id`**      | `integer`          | `not null`
# **`category_id`**  | `integer`          | `not null`
# **`created_at`**   | `datetime`         | `not null`
# **`updated_at`**   | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_book_categories_on_book_id`:
#     * **`book_id`**
# * `index_book_categories_on_category_id`:
#     * **`category_id`**
#

class BookCategory < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
end
