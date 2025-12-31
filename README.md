# RSpec 練習用リポジトリ

RSpecの練習用プロジェクトです。

## セットアップ

```bash
# 依存関係のインストール
bundle install

# RSpecの初期化（既に完了している場合は不要）
bundle exec rspec --init
```

## 使い方

```bash
# すべてのテストを実行
bundle exec rspec

# 特定のファイルのテストを実行
bundle exec rspec spec/example_spec.rb

# 詳細な出力で実行
bundle exec rspec --format documentation
```

## ディレクトリ構造

```
.
├── lib/          # 練習用のコード
├── spec/         # テストファイル
├── Gemfile       # 依存関係
└── README.md     # このファイル
```

