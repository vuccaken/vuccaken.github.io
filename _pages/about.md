---
# layout: default
title: About
active_plan:
  - [例会, 毎週水曜日 18時〜]
  - [ゼミ, 元気があれば開催]
  - [学園祭, 12月1日（日） @BKC]
---

## 物理科学研究会とは

このサークルは立命館大学BKCにて、物理科学全般について日々研究・学習を行っている学術本部公認団体です。

1949年に核物理研究会として創立され、2000年に時代と活動内容に沿った名前にするため、現在の物理科学研究会に改名されました。

## 活動場所

立命館大学　びわこ・くさつキャンパス　アクトα　2F

![act alpha]({{ site.baseurl }}/assets/img/pages/actalpha_th.jpg)

## 活動日程

2019年度の活動日程は以下の通りです。

<!-- - 例会（秋期）：毎週水曜日 18時〜
- ゼミ：元気があれば開催
- 学園祭（BKC）：12月1日（日） -->

<div class="table-space">
<table>
{% for item in page.active_plan %}
  <tr>
    <td style="text-align: right;">{{ item[0] }}：</td>
    <td>{{ item[1] }}</td>
  </tr>
{% endfor %}
</table>
</div>

## 会費

6,000円（年間）

## 年間予定

<div class="table-space">
<table>
{% for item in site.data.about-schedule %}
  <tr>
    <td>{{ item.month }}</td>
    <td>{{ item.plan }}</td>
  </tr>
{% endfor %}
</table>
</div>