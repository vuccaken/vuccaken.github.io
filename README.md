# new-hp

Reiwa 1, This is NEW vucacken HOME PAGE !!!

Access: https://vuccaken.github.io

一応完成。デザインがダサいですが、もう僕にはどうしようもありません。(nkym)

## developing

- 作成開始：2019-09-30
- git init: 2019-10-07
- 完成：2019-11-06


## 部員へ

- Jekyllという静的サイトジェネレータを使って作っています。
  - http://jekyllrb-ja.github.io/docs/
- ~~学祭までには完成させます......~~
  - 一応完成です。あとはセンスある人に託します。


## jekyll使い方メモ

- `gem install`
- `bundle exec jekyll server`

### ローカルでビルドする場合

`_config.yml` でGithub Pages用に `baseurl` を設定しているので、
ローカルでビルドする時は次のようにflagを付ける。

```
bundle exec jekyll s --baseurl ''
```

winだと（？）上のような `''` ではなく `` `' `` じゃないとダメっぽい（アホ）。

```
bundle exec jekyll s --baseurl `'
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

## 注意

- Github Pagesでは、未来の記事も表示される。

## 参考

- https://github.com/allejo/jekyll-toc
  - h2の目次はこれで出力。

---

## ブラウザ自動更新

開発の際、ファイルに変更があるたびにブラウザを自動リロードするためのノウハウ。

[Brousersync](https://browsersync.io)というnpmのパッケージを利用する。

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