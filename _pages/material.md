---
title: Material
toc: true
---

<h2 id="seminar">セミナー資料</h2>

準備中

### 2019年度

- aaaaa
- bbbbb


<h2 id="poster">ポスター</h2>

学園祭で展示したポスターです。

### 2019年度

- [ホーキング年表 - rp1](https://drive.google.com/open?id=1FN32CYfMmbR1p0wxQcB5FrvmpVXEWTcs){:target="_blank"}
- [論理学入門 - rp1](https://drive.google.com/open?id=1arq8Vt9Uxr4XQvIekAGjgzgDcCMLkA9I){:target="_blank"}
- [実在論と量子論 - rp4](https://drive.google.com/open?id=1rMOfJ9ld3o_7dso2ZYEjJDwrYGL8BdxR){:target="_blank"}


<h2 id="kaishi">会誌</h2>

歴代の会誌をスキャンしてデータ化しました。

リンクをクリックするとGoogle Driveに飛びます。

<div class="kaishi-list">
  {% for era in site.data.kaishi-list %}
    <h3>{{ era[0] }}年代</h3>
    <ul>
      {% for item in era[1] %}
        <li><a href="{{ item[1] }}" target="_blank">{{ item[0] }}</a></li>
      {% endfor %}
    </ul>
  {% endfor %}
</div>