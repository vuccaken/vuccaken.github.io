---
title: Special
permalink: special
rp2017xy: https://vuccaken.github.io/rp2017xy/
---

## 特設ベージ

### 学園祭

学園祭の団体企画内容などが書いてあります。

- 2020年度 学園祭！　は中止になりました (T_T)
- [2019年度 学園祭！]({{ site.baseurl }}/pages/events/fes2019.html)
- [2018年度 学園祭！]({{page.rp2017xy}}/festival2018.html){:target="_blank"}
- [2017年度 学園祭！]({{page.rp2017xy}}/festival2017.html){:target="_blank"}

### 新歓

新歓イベント情報が書いてあります。見てね。

- [2020年度 新歓！！]({{ site.baseurl }}/pages/events/sin2020.html)
- [2019年度 新歓！！]({{page.rp2017xy}}/shinkan2019.html){:target="_blank"}
- [2018年度 新歓！！]({{page.rp2017xy}}/shinkan2018.html){:target="_blank"}


## ギャラリー
{: #gallery}

### 新歓チラシ
{: #chirashi}

{% for item in site.data.special.chirashi reversed %}
<h4>{{ item.year }}年度</h4>
  {% include pages/gallery.html dir=item.dir files=item.images %}
{% endfor %}
