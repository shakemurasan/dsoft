# 本当はdecoratorにしたい
module CategoryHelper
  def bg(category)
    "background-color: #{category.color_code}"
  end
end
