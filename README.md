# vuccaken homepage

This is NEW vucacken HOME PAGE !!!

Access: https://vuccaken.github.io

## 開発ログ
- 2019-09-30 作成開始 ([nukoyama](https://github.com/znuko))
- 2019-10-07 git init
- 2019-11-06 完成
- 2021-05-30 少し改修

## 部員へ

令和になったのでホームページを新しく作りました。

一応完成です。あとはセンスある人に託します。

[Jekyll](http://jekyllrb-ja.github.io/docs/)という静的サイトジェネレータを使っています。


## jekyll使い方メモ

Gemsのインストール（初回）；

```
gem install
```

サーバを起動；

```
bundle exec jekyll server
```

### Gemfile

`gemfile.lock` を生成：

```
bundle install
```

gem version を更新；

```
bundle update
```

### Documents

いつか作ります。お待ちを。

## 注意

- Github Pagesでは、未来の記事も表示される。

## 参考

- https://github.com/allejo/jekyll-toc
  - h2の目次はこれで出力。

---

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