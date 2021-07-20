# vuccaken homepage

物科研のHPです。

Access: https://vuccaken.github.io/

## 開発ログ
- 2019-09-30 作成開始 ([nukoyama](https://github.com/znuko))
- 2019-10-07 git init
- 2019-11-06 完成
- 2021-05-30 少し改修

## 部員へ

令和になったのでホームページを新しく作りました。

一応完成です。あとはセンスある人に託します。

[Jekyll](http://jekyllrb-ja.github.io/docs/)という静的サイトジェネレータを使っています。


## jekyll使い方

### 開発環境の構築

ローカルでビルドしたい場合は、下記のステップで環境を整える。

0. リポジトリをクローン
1. Rubyをインストール
2. `jekyll` と `bundler` をインストール；

   ```
   gem install jekyll bundler
   ```

3. `Gemfile` に書いてあるGemsをインストール；

   ```
   bundle install
   ```

### サイトの生成

リモートリポジトリにpushすればgithubが自動でビルドしてくれる。

ローカルでビルドしたい場合は下記コマンドを実行；

```
bundle exec jekyll build
```

あるいは、下記コマンドでサーバを立てる；

```
bundle exec jekyll server
```

サーバが立ったらブラウザで http://127.0.0.1:4000/ を開く。


### デプロイ環境での注意

- Github Pagesでは、未来の記事も表示される。
- yml中の文字列に `:` が含まれる場合はちゃんとクオーテーションで囲まないとエラーが出る。
- [ホワイトリスト](https://pages.github.com/versions/)に無いプラグインは無効化される。
  - プラグインを使いたいなら、ローカルでビルドして生成されたサイトを公開すればよい
  - Github Actionsで自動化できる

### プラグイン

- 目次の出力
  - https://github.com/allejo/jekyll-toc
- 生成したhtmlのコードフォーマット
  - https://github.com/apsislabs/jekyll-tidy
  - https://github.com/threedaymonk/htmlbeautifier


### Documents

いつか作ります。お待ちを。

----

## ブラウザ自動更新

開発の際、ファイルに変更があるたびにブラウザを自動リロードするためのノウハウ。

[Browsersync](https://browsersync.io)というnpmのパッケージを利用する。

npmでインストール；

```
npm install -g browser-sync
```

作業ディレクトリへ移動して、初期化する；

```
browser-sync init
```

すると設定ファイル `bs-config.js` が生成されるので、以下のように少し編集する；

```js
module.exports = {
    // 略
    // "files": false,
    "files": [ // 変更を監視するファイルを指定
        "_site/*"
    ],
    // 略
    // "proxy": false,
    "proxy": "localhost:4000",
    //略
};
```

あとは、`jekyll` のサーバーを起動してから、以下のコマンドを実行すればよい；

```
browser-sync start --config bs-config.js
```