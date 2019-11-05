# new-hp
developing new homepage......

Access: https://vuccaken.github.io


## developing

- 作成開始：2019-09-30
- git init: 2019-10-07
- 一応完成：2019-11-06


## 部員へ

- Jekyllという静的サイトジェネレータを使って作っています。
- 学祭までには完成させます......


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

## 注意

- Github Pagesでは、未来の記事も表示される。

## 参考

- https://github.com/allejo/jekyll-toc
  - h2の目次はこれで出力。
