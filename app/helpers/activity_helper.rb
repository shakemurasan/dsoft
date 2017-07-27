# 本当はdecoratorにしたい
module ActivityHelper
  def activity_title(activity)
    activity.times.nil? ? activity.alias_title : "第 #{activity.times} 回"
  end
end
