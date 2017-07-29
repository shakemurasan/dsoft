# 環境構築
## Dockerによる実行

以下のコマンドで、ワークツリー上のソースコードをrailsコンテナ内にマウントして実行します。

```bash
$ cd docker
$ docker-compose up
```

しばらくすると以下のようなメッセージが表示されます。  

```
app_1       | * Version 3.9.1 (ruby 2.4.1-p111), codename: Private Caller
app_1       | * Min threads: 5, max threads: 5
app_1       | * Environment: development
app_1       | * Listening on tcp://0.0.0.0:3000
app_1       | Use Ctrl-C to stop
```

[http://localhost:3000](http://localhost:3000)で実行確認できます。

こんなメッセージが出た場合:
> Migrations are pending. To resolve this issue, run: bin/rake db:migrate RAILS_ENV=development

appコンテナでdb:migrateを実行して下さい。

```
$ docker-compose exec app bin/rails db:migrate RAILS_ENV=development
```

## Dockerを使わない場合の、ローカル環境構築方法

### Rubyのインストール

まずは、入れてなかったらRubyをインストールしませう。

rbenvでインストールするのが、Rails界隈のデファクトスタンダードだお。

http://qiita.com/dtlabo/items/4d5922b6c3e4face35b6

Rubyのバージョンは、自分は `2.3.1` を入れています。あまり古すぎると動かないんで注意。

### リポジトリのclone

まずはターミナルで `git clone` しませう。

```
$ git clone https://github.com/muramurasan/dsoft.git
```

### bundle installでgem(ライブラリ)をインストールする

次に、cloneしてできたフォルダまで移動して、`bundle install` しませう。

```
$ cd dsoft
$ bundle install
```

`bundler`ねぇぞ！ とか怒られたら、`gem install bundler`しておきましょう。

### migrationの実行(DBにテーブル定義するやつです)

```
$ rake db:migrate
# もしくは bin/rake db:migrate
```

### Railsの起動

やっと、Railsを立ち上げられます。やったね。

```
$ rails s
```

http://localhost:3000/ にアクセスすると、ランディングページが表示される。やったね。

# 本番環境について

## herokuへのpush

muramurasan, sin208, uphy の誰かに聞いてください！

# Q&A

## PostgreSQL入ってないお・・・・

入れてください(迫真)

入れるの面倒だからSQLiteでいいすか？ って方は、Gemfileを開いて、以下のように書き換えてから `bundle install` しましょう

before
```
group :development, :test do
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
end
```

after
```
group :development, :test do
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'sqlite3'
end
```

# 後で消す(サイトマップ)

- https://dodosoft.herokuapp.com
  - ランディングページ
- https://dodosoft.herokuapp.com/cbef4e025a296e0e9b647421cc56be2c/activities
  - 管理画面：Activity
- https://dodosoft.herokuapp.com/cbef4e025a296e0e9b647421cc56be2c/books
  - 管理画面：Book
- https://dodosoft.herokuapp.com/books
  - Booksのmore。これまでにやった本の一覧
- https://dodosoft.herokuapp.com/activities
  - Activitiesのmore。これまでの活動一覧
