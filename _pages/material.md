---
title: Material
---

## セミナー資料
{: #seminar}

準備中

### 2019年度

- aaaaa
- bbbbb

## ポスター
{: #poster}

学園祭で展示したポスターです。

### 2019年度

- [ホーキング年表 - rp1](https://drive.google.com/open?id=1FN32CYfMmbR1p0wxQcB5FrvmpVXEWTcs){:target="_blank"}
- [論理学入門 - rp1](https://drive.google.com/open?id=1arq8Vt9Uxr4XQvIekAGjgzgDcCMLkA9I){:target="_blank"}
- [実在論と量子論 - rp4](https://drive.google.com/open?id=1rMOfJ9ld3o_7dso2ZYEjJDwrYGL8BdxR){:target="_blank"}


## 会誌
{: #kaishi}

歴代の会誌をスキャンしてデータ化しました。

リンクをクリックするとGoogle Driveに飛びます。

### 2020年代
- 2020年度
  - Now developing!!
  - [vuccaken/kaishi2020](https://github.com/vuccaken/kaishi2020){:target="_blank"}

### 2010年代
- 2019年度
  - [PDF用](https://drive.google.com/open?id=1UCpxurvCyks9gRxq1Ta_ksFUvRxqG2Ii){:target="_blank"}
  - [印刷用](https://drive.google.com/file/d/1IQUG_vhy3ADPJoONHCy8eErvq4_lrDU0/view?usp=sharing){:target="_blank"}
  - [Releases · vuccaken/kaishi2019](https://github.com/vuccaken/kaishi2019/releases){:target="_blank"}
- 2018年度
  - [第2版](https://drive.google.com/open?id=1KNeHDLP9s7586BG6uY42DuQ9gFHv2WNW){:target="_blank"}
  - [初版 学園祭配布分](https://drive.google.com/open?id=1LfdiW9qgEplCvxJ42t2oVGk3iYqWVQba){:target="_blank"}
  - [Release · vuccaken/kaishi2018](https://github.com/vuccaken/kaishi2018/releases/){:target="_blank"}
- [2017年度](https://drive.google.com/open?id=1h_Z2RLaUeMzO6ROQNH5QBDRMWc6zHM_J){:target="_blank"}
  - [Releases · vuccaken/kaishi2017](https://github.com/vuccaken/kaishi2017/releases){:target="_blank"}
- [2017年度 OB会](https://drive.google.com/file/d/1LNKDmo2k4GF8TphcTuUn5Cxs8avPfP5C/view?usp=sharing){:target="_blank"}
- [2016年度](https://drive.google.com/file/d/1AJiBLoblQc61pyOC5jfFJyW0B95KehsU/view?usp=sharing){:target="_blank"}
- [2015年度](https://drive.google.com/open?id=0BweCineGGD_haXRPejB6NTJqalE){:target="_blank"}{:target="_blank"}


{% for era in site.data.kaishi-list %}
<h3>{{ era[0] }}年代</h3>
<ul>
  {%- for item in era[1] %}
    <li><a href="{{ item[1] }}" target="_blank">{{ item[0] }}</a></li>
  {%- endfor %}
</ul>
{% endfor %}
