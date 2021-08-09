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
  - [member]({{ 'member' | relative_url }})
  - `_site/` 以下のパスで指定する。

### 画像 image
- `![alt](URL)`
- centering:

{: style="text-align: center;"}
![act alpha]({{ 'assets/img/pages/actalpha_th.jpg' | relative_url }})

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
- {% raw %}`{% include images.html dir=page.imagePath src=page.images %}`{% endraw %}
- 引数 `dir` には共通なパス与える。
  - 複数ある画像の `img/` からファイル自体までの path が同じとき、それをここで指定しておけばヘッダーの配列に書くのはファイル名だけでよくなるので便利。
  - 不要であれば、引数 `dir` は指定しなくてよい。
- 引数 `src` にはヘッダーの配列の名前を与える。
- `page.**` は「このページに書いてある `**` という変数の値」という意味。


{% include images.html dir=page.path2images1 src=page.images1 %}

こんな感じで出ます。

{% include images.html src=page.images2 %}

## メモ

## tables

tbodyなどを用いずtable要素にtrを直置きした場合でも、ブラウザではtbodyが存在するように解釈される。

なので、`table > tr`のようにtrが直置きされるような場合は考えないことにする。

### markdownで作成

| あああ | あああ | あああ |
| ----- | ----- | ----- |
| いいい | いいい | いいい |
| いいい | いいい | いいい |
| いいい | いいい | いいい |

テキスト方向、クラス指定

{: .col-border}
| あああ | あああ | あああ | あああ |
| ----: | :---: | :---- | ----- |
| 右寄せ | 中央寄せ | 左寄せ | 指定なし |
| いいい | いいい | いいい | いいい |
| いいい | いいい | いいい | いいい |
| いいい | いいい | いいい | いいい |


### 基本パターン

#### captionなし

thead, tbody使用

<table>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

tbodyのみ使用

<table>
  <tbody>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>


tbodyのみ使用。thなし

<table>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

NG: theadとtbody使用。thなし

<table>
  <thead>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>


#### captionあり

<table>
  <caption>thead, tbody使用</caption>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table>
  <caption>tbodyのみ</caption>
  <tbody>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table>
  <caption>tbodyのみ。thなし</caption>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>


### レイアウトいろいろ

<table class="left-header">
  <caption>左ヘッダー<code>class="left-header"</code></caption>
  <tbody>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table class="no-zebra">
  <caption>縞模様なし<code>class="no-zebra"</code></caption>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table class="no-row-border">
  <caption>横ボーダーなし<code>class="no-row-border"</code></caption>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table>
  <caption>一部横ボーダー非表示</caption>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td class="no-row-border">非表示 td</td><td>いいい</td></tr>
    <tr><td class="no-row-border">非表示 td</td><td>いいい</td><td class="no-row-border">非表示 td</td></tr>
    <tr class="no-row-border"><td>非表示 tr</td><td>非表示 tr</td><td>非表示 tr</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table class="col-border">
  <caption>縦ボーダーあり<code>class="col-border"</code></caption>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table class="col-border">
  <caption>縦ボーダーあり、一部非表示</caption>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td class="no-col-border">非表示 td</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr class="no-col-border"><td>非表示 tr</td><td>非表示 tr</td><td>非表示 tr</td></tr>
    <tr><td>いいい</td><td>いいい</td><td class="no-col-border">非表示 td</td></tr>
  </tbody>
</table>

<table>
  <caption>rowspanとcolspan。角に相当するセルには手動でborder-radiusを付けなければならない</caption>
  <thead>
    <tr><th>あああ</th><th colspan="2">あああ</th><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr><td>いいい</td><td>いいい</td><td>いいい</td><td>いいい</td><td rowspan="2">ううう</td><td>いいい</td></tr>
    <tr><td class="l b" rowspan="3">ううう</td><td>いいい</td><td rowspan="2">ううう</td><td>いいい</td><td>いいい</td></tr>
    <tr><td>いいい</td><td>いいい</td><td class="r b" rowspan="2" colspan="2">ううう</td></tr>
    <tr><td class="c">あああ</td><td>いいい</td><td class="c">あああ</td></tr>
  </tbody>
</table>

<table>
  <caption>rowspan使用例のサンプル。<br>縞模様と横ボーダーを手動で処理</caption>
  <thead>
    <tr><th>あああ</th><th>あああ</th><th>あああ</th></tr>
  </thead>
  <tbody>
    <tr class="zebra-odd"><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr class="zebra-even"><td rowspan="3">いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr class="zebra-even no-row-border"><td>いいい</td><td>いいい</td></tr>
    <tr class="zebra-even no-row-border"><td>いいい</td><td>いいい</td></tr>
    <tr class="zebra-odd"><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr class="zebra-even"><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr class="zebra-odd"><td class="l b" rowspan="2">ううう</td><td>いいい</td><td>いいい</td></tr>
    <tr class="zebra-odd no-row-border"><td class="c">いいい</td><td>いいい</td></tr>
  </tbody>
</table>


## フォントサイズ

```
1 + 8/8 = 2     | 16 * 2     = 32
1 + 6/8 = 1.75  | 16 * 1.75  = 28  h1
1 + 4/8 = 1.5   | 16 * 1.5   = 24
1 + 3/8 = 1.375 | 16 * 1.375 = 22  h2
1 + 2/8 = 1.25  | 16 * 1.25  = 20  h3
1 + 1/8 = 1.125 | 16 * 1.125 = 18  h4-h6
1 + 0/8 = 1     | 16 * 1     = 16  p
1 - 1/8 = 0.875 | 16 * 0.875 = 14  small
1 - 2/8 = 0.75  | 16 * 0.75  = 12
```