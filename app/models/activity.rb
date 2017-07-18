# ## Schema Information
#
# Table name: `activities`
#
# ### Columns
#
# Name               | Type               | Attributes
# ------------------ | ------------------ | ---------------------------
# **`id`**           | `integer`          | `not null, primary key`
# **`times`**        | `integer`          |
# **`alias_title`**  | `string`           |
# **`contents`**     | `text`             | `not null`
# **`image_path`**   | `string`           |
# **`created_at`**   | `datetime`         | `not null`
# **`updated_at`**   | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_activities_on_alias_title` (_unique_):
#     * **`alias_title`**
# * `index_activities_on_image_path` (_unique_):
#     * **`image_path`**
# * `index_activities_on_times` (_unique_):
#     * **`times`**
#

class Activity < ApplicationRecord
  # TODO: validateの定義はrspec導入時にする
end
