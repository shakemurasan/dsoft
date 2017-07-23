# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Dockerによる実行

以下のコマンドで、ワークツリー上のソースコードをrailsコンテナ内にマウントして実行します。

```bash
$ cd docker
$ docker-compose up
```

# とりあえず、ローカル環境構築の方法(できなかったら適宜Slackで教えてください)

## Rubyのインストール

まずは、入れてなかったらRubyをインストールしませう。

rbenvでインストールするのが、Rails界隈のデファクトスタンダードだお。

http://qiita.com/dtlabo/items/4d5922b6c3e4face35b6

Rubyのバージョンは、自分は `2.3.1` を入れています。あまり古すぎると動かないんで注意。

## リポジトリのclone

まずはターミナルで `git clone` しませう。

```
$ git clone https://github.com/muramurasan/dsoft.git
```

## bundle installでgem(ライブラリ)をインストールする

次に、cloneしてできたフォルダまで移動して、`bundle install` しませう。

```
$ cd dsoft
$ bundle install
```

`bundler`ねぇぞ！ とか怒られたら、`gem install bundler`しておきましょう。

## migrationの実行(DBにテーブル定義するやつです)

```
$ rake db:migrate
# もしくは bin/rake db:migrate
```

## Railsの起動

やっと、Railsを立ち上げられます。やったね。

```
$ rails s
```

http://localhost:3000/ にアクセスすると、ランディングページが表示される。やったね。

## herokuへのpush

muramurasan, sin208, uphy の誰かに聞いてください！
