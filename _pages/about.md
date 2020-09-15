---
# layout: default
title: About

act_alpha:
  - [act alpha,pages/actalpha_th.jpg]
  - [OB2,posts/2019-12-14-OB/2019-OB-2.jpg]

year: 2020年度
active_plan:
  - [例会, 自粛！！]
  # - [例会, 毎週？曜日 18時〜 （前期）]
  - [ゼミ, 砂川『理論電磁気』輪読　金曜13時〜]
  # - [ゼミ, 元気があれば開催]
  - [新歓セミナー, <del>5月？</del>　未定]
  - [学園祭, <del>11月頃 @BKC</del>　中止！]
  - [OB会, 次回開催時期未定]
  # - [OB会, 12月14日（土） @BKC]
schedule:
  - [4月,新入生歓迎および実験・ゼミのテーマ決め]
  - [5月,ゼミ活動および実験についての学習]
  - [6月,ゼミ活動および実験についての学習]
  - [7月,定期試験により活動休止]
  - [8月,夏期休暇・実験]
  - [9月,夏期休暇・実験]
  - [10月,会誌の製作・OB会にむけた準備]
  - [11月,学園祭]
  - [12月,OB会・業務引き継ぎ]
  - [1月,定期試験により活動休止]
  - [2月,春期休暇・予算会議]
  - [3月,春期休暇・新歓の作戦会議]
---

{:id="what-is-vuccaken"}
## 物理科学研究会とは

このサークルは立命館大学BKCにて、物理科学全般について日々研究・学習を行っている学術本部公認団体です。

1949年に核物理研究会として創立され、2000年に時代と活動内容に沿った名前にするため、現在の物理科学研究会に改名されました。


{:id="address"}
## 活動場所

### 部室（サークルルーム）

立命館大学　びわこ・くさつキャンパス　アクトα　2F

{% include images.html src=page.act_alpha %}

### 連絡先

<div class="table-space">
  <table>
    <tr>
      <td class="right">e-mail:</td>
      <td>{{ site.email }}</td>
    </tr>
    <tr>
      <td class="right">Twitter:</td>
      <td><a href="https://twitter.com/{{ site.twitter_username }}" target="_blank">@{{ site.twitter_username }}</a></td>
    </tr>
  </table>
</div>


{:id="active-plan"}
## 活動日程

{{ page.year }}の活動日程は以下の通りです。

<!-- - 例会（秋期）：毎週水曜日 18時〜
- ゼミ：元気があれば開催
- 学園祭（BKC）：12月1日（日） -->

<div class="table-space">
  <table>
  {% for item in page.active_plan %}
    <tr>
      <td class="right active">{{ item[0] }}：</td>
      <td>{{ item[1] }}</td>
    </tr>
  {% endfor %}
  </table>
</div>


{:id="fee"}
## 会費

6,000円（年間）


{:id="schedule"}
## 年間予定

<div class="table-space">
  <table>
  {% for item in page.schedule %}
    <tr>
      <td class="right month">{{ item[0] }}</td>
      <td>{{ item[1] }}</td>
    </tr>
  {% endfor %}
  </table>
</div>