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
#

class Book < ApplicationRecord
end
