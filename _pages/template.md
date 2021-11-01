---
title: Template

dir1: posts/2019-12-14-OB/
images1:
  - [OB1, 2019-OB-1.jpg]
  - [OB2, 2019-OB-2.jpg]

images2:
  - [act, pages/actalpha_th.jpg]
  - [act, pages/actalpha_th.jpg]
  - [act, pages/actalpha_th.jpg]
---

テンプレというかマニュアル。


## はじめに

このサイトは[Jekyll](http://jekyllrb-ja.github.io){:target="_blank"}という静的サイトビルダーによって生成されています。

JekyllはRubyのGemです（初心者は無視）。

サーバーは[GitHub Pages](https://pages.github.com){:target="_blank"}を利用しています。
無料です。

このサイトのソースはGitHubに置いてますが、masterブランチにpushするたびに自動でビルドするように設定されています。


## サイトの更新方法

ローカルにJekyllの開発環境を整え、サイトの変更をコミットし、リモートリポジトリ（GitHub）へpushする方法が基本的です。

開発環境の構築についてはリポジトリの[READMEファイル](https://github.com/vuccaken/vuccaken.github.io#readme){:target="_blank"}の方に書いておきます。


## Jekyllの基礎知識・文法

まずはJekyll公式サイトにある[Step by Step チュートリアル](http://jekyllrb-ja.github.io/docs/step-by-step/01-setup/){:target="_blank"}をやってみてください。
最低限の知識はここで学べます。

### Liquid

ソースのhtmlファイルを除いてみると`{% raw %}{% hoge %}{% endraw %}`のような記法がたくさん見受けられるかと思います。
これは[Liquid](https://shopify.github.io/liquid/){:target="_blank"}というテンプレート言語の文法で「タグ」と呼ばれます。

Liquidのおかげでhtml中でfor文やif文などが使えたり、他にもいろいろなことができるようになります！

公開されるhtmlにはLiquidの記述は残っておらず、Jekyllでビルドする際にコンパイルされます。

詳細は適宜[ドキュメント](https://shopify.github.io/liquid/basics/introduction/){:target="_blank"}を見てもらうことにして、以下で`{% raw %}{{ }}{% endraw %}`や`{% raw %}{% %}{% endraw %}`や`|`が出てきたらLiquidの記法だと思ってください。




## Markdownチートシート

Markdown記法のチートシートです。LiquidやJekyll独自の記法も混ざっています。

拡張子が`.md`のファイル内でしか機能しないので注意です。


### リンク

リンクは基本的には次のように書きます；

```md
[立命館大学](http://www.ritsumei.ac.jp)
```

リンクを新規タブで開く場合は次のように書きます；

```md
[立命館大学](http://www.ritsumei.ac.jp){:target="_blank"}
```

外部リンクは全て新規タブで開くルールにしています。できれば守ってください。

内部リンクを貼る場合は、下記のようにしてください；

```liquid
{% raw %}[member]({% link _pages/member.md %}){% endraw %}
```

`link`タグの引数には、リンク先ページの（ビルド前の）ルートからの相対パスを指定します。

`link`タグの詳細は[こちら](http://jekyllrb-ja.github.io/docs/liquid/tags/#リンク){:target="_blank"}を参照してください。

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


### ソースコード

インラインコードは`` `hoge` ``のように書きます。

コードブロックは次のように書きます；

````
```
<section class="hoge">
  <h1>にゃあ</h1>
  <p>ほげほげ。にゃーん</p>
</section>
```
````

コードの言語を指定すれば文法でハイライトしてくれます；

````
```html
<section class="hoge">
  <h1>にゃあ</h1>
  <p>ほげほげ。にゃーん</p>
</section>
```
````

あるいはJekyllで用意されている`highlight`タグを使うこともできます；

{% raw %}
```liquid
{% highlight html %}
<section class="hoge">
  <h1>にゃあ</h1>
  <p>ほげほげ。にゃーん</p>
</section>
{% endhighlight %}
```
{% endraw %}




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
- {% raw %}`{% include images.html dir=page.dir src=page.images %}`{% endraw %}
- 引数 `dir` には共通なパス与える。
  - 複数ある画像の `img/` からファイル自体までの path が同じとき、それをここで指定しておけばヘッダーの配列に書くのはファイル名だけでよくなるので便利。
  - 不要であれば、引数 `dir` は指定しなくてよい。
- 引数 `src` にはヘッダーの配列の名前を与える。
- `page.**` は「このページに書いてある `**` という変数の値」という意味。


{% include images.html dir=page.dir1 src=page.images1 %}

こんな感じで出ます。

{% include images.html src=page.images2 %}



{% assign images3 = "
  posts/2019-12-14-OB/2019-OB-2.jpg
  pages/actalpha_th.jpg
  pages/actalpha_th.jpg
" | split: " " %}

{% include images.html src=images3 %}









## 見栄え

サイト上での表示の確認です。

### 見出し

<section class="heading-sample md-typeset">
  <h1>見出し h1</h1>
  <h2>見出し h2</h2>
  <h3>見出し h3</h3>
  <h4>見出し h4</h4>
  <h5>見出し h5</h5>
  <h6>見出し h6</h6>
  <p>段落。ほげほげ。</p>
</section>
<style>
.heading-sample {
  padding: 0 30px;
  margin-bottom: 15px;
  border: solid 2px pink;
}
</style>

注：見出しは h1 は使わず、h2から始めてください。

## tables

tbodyなどを用いずtable要素にtrを直置きした場合でも、ブラウザではtbodyが存在するように解釈される。

なので、`table > tr`のようにtrが直置きされるような場合は考えないことにする。

### markdownで作成

| あああ | あああ | あああ |
| ----- | ----- | ----- |
| いいい | いいい | いいい |
| いいい | いいい | いいい |
| いいい | いいい | いいい |

テキスト方向、クラス指定（`.col-border`）

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


tbodyのみ使用。thなしでtdのみ

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

現状のcssでは下線を引くべき`th`を特定できないので、セルフでクラスを付けて区別する他無いです。

`.left-header`クラスをセルフで付けることを妥協案とします。

<table class="left-header">
  <caption>左ヘッダー<code>class="left-header"</code></caption>
  <tbody>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
    <tr><th>あああ</th><td>いいい</td><td>いいい</td><td>いいい</td></tr>
  </tbody>
</table>

<table class="left-header col-border">
  <caption>
    左ヘッダーかつ縦ボーダーあり<br>
    <code>class="left-header col-border"</code>
  </caption>
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

<table class="row-border">
  <caption>横ボーダーあり<code>class="row-border"</code></caption>
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

<table class="row-border">
  <caption>横ボーダーあり、一部非表示</caption>
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
