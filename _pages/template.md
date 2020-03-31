---
title: Template

path2images1: posts/2019-12-14-OB/
images1:
- [OB1,2019-OB-1.jpg]
- [OB2,2019-OB-2.jpg]

images2:
- [act,pages/actalpha_th.jpg]
- [act,pages/actalpha_th.jpg]
- [act,pages/actalpha_th.jpg]
---

テンプレというかマニュアル。

## 見出し h2
### 見出し h3
#### 見出し h4
##### 見出し h5
注：見出しは h1 は使わず、h2から始めてください。

## markdown チートシート
ソースを直接見てください。

### リンク
- 基本
  - [立命館大学](http://www.ritsumei.ac.jp)
  - `[name](URL)`
- 外部リンク（新規タブで開く）
  - [立命館大学](http://www.ritsumei.ac.jp){:target="_blank"}
  - これは kmarkdown 独自の機能
- 内部リンク
  - [member]({{ site.baseurl }}/pages/member.html)
  - `_site/` 以下のパスで指定する。

### 画像 image
- `![alt](URL)`
- centering:

{: style="text-align: center;"}
![act alpha]({{ site.baseurl }}/assets/img/pages/actalpha_th.jpg)

- 注意：画像の出力は、基本的には後述の自作マクロ `images.html` を使うようにしてください。

### 文字の装飾
- 取り消し線： ~~取り消します~~
- 太字： **太いです**
- inline code: `\documentclass{jsarticle}`
- code block:
```tex
\begin{align}
    F = ma \label{eq:EOM}
\end{align}
```

### 表 table

| No. | who   | eat      |
| --: | :---- | :------: |
| 1   | man   | Apple    |
| 2   | monky | monopole |


## jekyll

このサイトはjekyllというhomepage builderによって生成されています。

buildはサーバーでもあるGithub Pagesが自動でやってくれます。

ローカルでサイトを生成するにはもろもろのインストールが必要です。

### Liquid
Liquid というプログラム言語？がある。

{% raw %}{{ }}{% endraw %} か {% raw %}{% %}{% endraw %} で囲まれているところがソレのプログラムで、タグと呼ばれる。

- 参考
  - [liquid チートシート](https://gist.github.com/JJediny/a466eed62cee30ad45e2)


## 自作マクロ

### 画像

#### 画像ファイルの配置
画像ファイルは、 `/assets/img/` 以下のしかるべき場所に配置する。
- ディレクトリ構造 (`/assets/img/`)
  - `events/`
    - 学祭や新歓の特設ページ用
  - `gallery/`
    - いまのところ、spacialページのチラシ用
  - `member-icon/`
    - memberページの会員のアイコン
  - `pages/`
    - 固定ページ（topとかaboutとか）用
    - 基本的に増えることはないはず
  - `posts/`
    - newsページに表示する各post用
    - post名と同じディレクトリを作成して入れる
  - `site-icon/`
    - bookmarkとかに使われるこのサイトのアイコン。faviconとか。

サムネは手動で生成する。
オリジナルは消してもいい。

というのが現状なのだが、なんとかして自動化したい。

#### 使い方
画像ソースのパスは、使用するページのヘッダーのところ（`---` で囲まれているとこ）に yml で書く。
- 配列の1つめは alt オプション。
- 配列の2つ目に `/assets/img/` 以下のパスのみを指定する。

マクロ解説（`/_includes/image.html`）
- {% raw %}`{% include images.html path=page.imagePath src=page.images %}`{% endraw %}
- 引数 `path` には共通なパス与える。
  - 複数ある画像の `img/` からファイル自体までの path が同じとき、それをここで指定しておけばヘッダーの配列に書くのはファイル名だけでよくなるので便利。
  - 不要であれば、引数 `path` は指定しなくてよい。
- 引数 `src` にはヘッダーの配列の名前を与える。
- `page.**` は「このページに書いてある `**` という変数の値」という意味。


{% include images.html path=page.path2images1 src=page.images1 %}

こんな感じで出ます。

{% include images.html src=page.images2 %}

## メモ

