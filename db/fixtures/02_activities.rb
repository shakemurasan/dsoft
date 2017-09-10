# 前回のシード画像を削除
require 'fileutils'
if File.exist?("public/uploads/activities") then
  Dir.chdir 'public/uploads/activities/'
  FileUtils.rm(Dir.glob('*.*'))
end

# 指定されたidのシード画像データのPathnameを取得する。
def seed_image(id)
  return Rails.root.join("seed/images/activities/%d.jpg" % id).open
end

Activity.seed(:id,
  {
    id: 107,
    times: 107,
    alias_title: nil,
    contents: 'もくもくと勉強しました。',
    image_path: nil,
    order_at: '2017-06-30'
  },
  {
    id: 108,
    times: 108,
    alias_title: nil,
    contents: '本勉強会で秋に開催予定のハッカソンのテーマややり方について話しました。',
    image_path: nil,
    order_at: '2017-07-01'
  },
  {
    id: 109,
    times: 109,
    alias_title: nil,
    contents: '
    今回は珍しく、朝から晩までもくもく会でした。
    面白い発見や疑問があったら共有しながら、それぞれ自分の好きなことをやりました。',
    image_path: seed_image(109),
    order_at: '2017-07-02'
  },
  {
    id: 110,
    times: 110,
    alias_title: nil,
    contents: '
    サイバーセキュリティプログラミングの3章を読みました。
    rawソケットを流れる全てのパケットを監視するという内容でした。
    Pythonで構造体の入出力が簡単できることが驚きでした。',
    image_path: seed_image(110),
    order_at: '2017-07-03'
  },
)
