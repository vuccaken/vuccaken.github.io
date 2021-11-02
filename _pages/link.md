---
title: Link
---

<!-- [link](URL){:target="_blank"} -->

## リンク
{: #rits}

### 大学
- [立命館大学](http://www.ritsumei.ac.jp){:target="_blank"}
  - [在学生の方へ](http://www.ritsumei.ac.jp/infostudents/){:target="_blank"}
  - [理工学部](http://www.ritsumei.ac.jp/se2017/){:target="_blank"}
    - [物理科学科](http://www.ritsumei.ac.jp/se/rp/physics/index.html){:target="_blank"}
  - [理工研究科](http://www.ritsumei.ac.jp/gsse/){:target="_blank"}
- [立命館大学学友会](http://www.ritsumei.club){:target="_blank"}
- [立命館大学校友会](https://alumni.ritsumei.jp){:target="_blank"}
- [実験工房@Rits](https://rits-kobo.jpn.org){:target="_blank"}

### 弊研究会
- [Twitter](https://twitter.com/vuccaken){:target="_blank"}
- [YouTube](https://www.youtube.com/channel/UCKO7a5YVCnFAquUzLKeIrMg){:target="_blank"}
- [@wiki](https://w.atwiki.jp/vuccaken/){:target="_blank"}
- [(旧)物理科学研究会HP (2001~2008)](http://www.geocities.co.jp/CollegeLife-Club/9131/){:target="_blank"}
  - [GitHub Pages 移行版](https://vuccaken.github.io/ritssnp/){:target="_blank"}
- [(旧)物理科学研究会HP (2009~2013)](http://vuccaken.web.fc2.com){:target="_blank"}
- [(旧)物理科学研究会HP (2014~2016)](http://ritsmeibuturikagaku2014.web.fc2.com/index.html){:target="_blank"}
- [(旧)物理科学研究会HP (2017~2019)](http://rp2017xy.starfree.jp){:target="_blank"}
  - [GitHub Pages 移行版](http://vuccaken.github.io/rp2017xy/){:target="_blank"}


## 会員向けリンク
{: #for-members}

### 大学
- [manaba+R](https://ct.ritsumei.ac.jp/ct/home){:target="_blank"}
- [English Expeditions](https://www.ee.ritsumei.ac.jp/index.htm){:target="_blank"}
- [休講連絡](http://www.ritsumei.ac.jp/academic-affairs/status/){:target="_blank"}
- [2021年度授業時間](http://www.ritsumei.ac.jp/pathways-future/course/calendar.html/){:target="_blank"}
- [立命館大学図書館](http://www.ritsumei.ac.jp/lib/){:target="_blank"}
  - [RUNNERS](https://runners.ritsumei.ac.jp/opac/odr_stat/?lang=0){:target="_blank"}
  - [開館日程](http://www.ritsumei.ac.jp/lib/a03/010/){:target="_blank"}
- [立命館生活協同組合](https://www.ritsco-op.jp/){:target="_blank"}
  - [BKC 営業時間](https://www.ritsco-op.jp/shopinformation/bkc.html){:target="_blank"}
- [キャリアセンター](https://secure.ritsumei.ac.jp/career/){:target="_blank"}
  - [在校生の皆さま](https://secure.ritsumei.ac.jp/students/career/current/){:target="_blank"}

### その他
- [Google Drive](https://drive.google.com/drive/u/1/my-drive){:target="_blank"}
- [Slack](https://r-physics.slack.com){:target="_blank"}
- [Amazon](https://www.amazon.co.jp){:target="_blank"}
- [宮内庁](https://www.kunaicho.go.jp){:target="_blank"}
- [河野太郎公式サイト](https://www.taro.org){:target="_blank"}
- [Apple](https://www.apple.com/jp/){:target="_blank"}
- [雀魂 -じゃんたま-](https://game.mahjongsoul.com){:target="_blank"}
- [DeepL翻訳](https://www.deepl.com/translator){:target="_blank"}
- [arXiv.org e-Print archive](https://arxiv.org){:target="_blank"}

### for developers
- [Google Console](https://www.google.com/webmasters/tools/home?hl=ja){:target="_blank"}
- [GitHub](https://github.com/vuccaken){:target="_blank"}
  - [vuccaken/vuccaken.github.io](https://github.com/vuccaken/vuccaken.github.io){:target="_blank"}
  - [vuccaken/kaishi2019](https://github.com/vuccaken/kaishi2019){:target="_blank"}
  - [vuccaken/kaishi2020](https://github.com/vuccaken/kaishi2020){:target="_blank"}
- [Progate](https://prog-8.com){:target="_blank"}
- [Jekyll ja](http://jekyllrb-ja.github.io){:target="_blank"}
- [Liquid template language](https://shopify.github.io/liquid/){:target="_blank"}
- まにゅある
  - [このサイトのテンプレ]({{ 'template' | relative_url }})


## 一部会員向けリンク
{: #anime}

{% for item in site.data.anime %}
<h4>{{ item.season }}</h4>
{% if item.links %}
<ul>
  {% for anime in item.links %}
  <li><a href="{{ anime[1] }}" target="_blank">{{ anime[0] }}</a></li>
  {% endfor %}
</ul>
{% else %}
<ul>
  <li>調査中</li>
</ul>
{% endif %}
{% endfor %}


## 全国民向けリンク

{% assign youtube_ids = "
  q7SbeF3Oqu8
  gknDmz_5AFo
  Ksf_gq6fZZM
  6bnaBnd4kyU
  65MVxnJbS0c
  IZ45CJEFO1M
  YL5seAenTN4
  FdV-tZU5f6g
  Qjkt93Wo_D8
  dhPnetBJ1bY
" | split: " " %}

<div class="youtube-grid">
{%- for youtube_id in youtube_ids %}
  {%- include youtube.html id = youtube_id -%}
{%- endfor %}
</div>
