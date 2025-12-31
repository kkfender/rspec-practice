# RSpec 練習用リポジトリ

Rails 7.1 + RSpecの練習用プロジェクトです。

[Everyday Rails Testing with RSpec](https://github.com/JunichiIto/everydayrails-rspec-jp-2024) の日本語版を参考にしたRSpec練習用リポジトリです。

## セットアップ

```bash
# 依存関係のインストール
bundle install

# データベースの作成（必要に応じて）
bundle exec rails db:create
```

## 使い方

```bash
# すべてのテストを実行
bundle exec rspec

# 特定のファイルのテストを実行
bundle exec rspec spec/user_spec.rb

# 詳細な出力で実行
bundle exec rspec --format documentation
```

## ディレクトリ構造

```
.
├── app/          # Railsアプリケーションのコード
│   ├── models/   # モデル
│   ├── controllers/ # コントローラー
│   └── views/    # ビュー
├── lib/          # 練習用のコード
├── spec/         # テストファイル
│   ├── models/   # モデルスペック
│   ├── controllers/ # コントローラースペック
│   └── system/   # システムスペック
├── config/       # Rails設定ファイル
├── Gemfile       # 依存関係
└── README.md     # このファイル
```

## 技術スタック

- Ruby 3.2.4
- Rails 7.1
- RSpec 3.13
- rspec-rails 6.1.5
- SQLite3

## 参考リポジトリ

- [everydayrails-rspec-jp-2024](https://github.com/JunichiIto/everydayrails-rspec-jp-2024) - Everyday Rails Testing with RSpec の日本語版サンプルアプリケーション

