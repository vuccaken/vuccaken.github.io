---
title: Member
---

## hello

## 会員構成

### 現役

<!-- | 学年 | 学部 | 学科 | 人数 |
|-|-|-|-|
| 1回生 | 理工 | 機械   | 1名 |
|      | 理工 | 物理   | 4名 |
| 2回生 | 理工 | 機械   | 1名 |
|      | 理工 | 電気電子 | 1名 |
| 3回生 | null | null | 0名 |
| 4回生 | 理工 | 物理科 | 2名 |
|      | 理工 | ロボティクス | 1名 |
|  M1  | 理工 | 物理 | 1名 | -->

<div class="table-space">
<table>
  <thead>
    <tr>
      <th>学年</th><th>学部</th><th>学科</th><th>人数</th>
    </tr>
  </thead>
  <tbody>
    <tr class="grade">
      <td rowspan="2">1回生</td>
      <td>理工</td><td>機械</td><td>1名</td>
    </tr>
    <tr>
      <td>理工</td><td>物理</td><td>4名</td>
    </tr>
    <tr class="grade">
      <td rowspan="2">2回生</td>
      <td>理工</td><td>機械</td><td>1名</td>
    </tr>
    <tr>
      <td>理工</td><td>電気電子</td><td>1名</td>
    </tr>
    <tr class="grade">
      <td rowspan="1">3回生</td>
      <td>null</td><td>null</td><td>0名</td>
    </tr>
    <tr class="grade">
      <td rowspan="2">4回生</td>
      <td>理工</td><td>物理科</td><td>2名</td>
    </tr>
    <tr>
      <td>理工</td><td>ロボティクス</td><td>1名</td>
    </tr>
    <tr class="grade">
      <td rowspan="1">M1</td>
      <td>理工</td><td>物理</td><td>1名</td>
    </tr>
  </tbody>
</table>
</div>

### OB
<!-- {{ page.structure[1] | size }}
{{ site.data.members[name] | size }}

{% assign games = site.data.members | group_by:"belong" %}
{% for game in games %}
<a href="javascript:;" class="categories-list-item" cate="{{ cat.categories}}">
    {{ game.name }} <span class="my-badge">{{ game.size }}</span>
</a>
{% endfor %} -->


## 会員リスト

{% include member-list.html %}

## 名誉会員

おっひ


<!-- {% for member in site.members %}
  <h3><a href="{{ member.url }}">{{ member.name }}</a></h3>
  <h4>{{ member.position }}</h4>
  <p>{{ member.content | markdownify }}</p>
{% endfor %} -->