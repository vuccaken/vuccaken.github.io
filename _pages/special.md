---
title: Special
rp2017xy: https://vuccaken.github.io/rp2017xy/
chirashi2019:
  - [sj.jpg, sj]
  - [nsmr.jpg, nsmr]
  - [nkym1.jpg, nkym]
  - [nkym2.jpg, nkym]
---



## 特設ベージ

### 学園祭

学園祭の団体企画内容などが書いてあります。

- [2019年度 学園祭！]({{ site.baseurl }}/pages/events/fes2019.html)
- [2018年度 学園祭！]({{page.rp2017xy}}/festival2018.html){:target="_blank"}
- [2017年度 学園祭！]({{page.rp2017xy}}/festival2017.html){:target="_blank"}

### 新歓

新歓イベント情報が書いてあります。見てね。

- [2019年度 新歓！！]({{page.rp2017xy}}/shinkan2019.html){:target="_blank"}
- [2018年度 新歓！！]({{page.rp2017xy}}/shinkan2018.html){:target="_blank"}


## ギャラリー



### 新歓チラシ

#### 2019年度

<div class="gallery">
  {% for img in page.chirashi2019 %}
  <div class="item">
    <a href="{{ site.baseurl }}/assets/img/gallery/chirashi2019/{{ img[0] }}">
      <img src="{{ site.baseurl }}/assets/img/gallery/chirashi2019/th-{{ img[0] }}" alt="{{ img[1] }}'s chirashi">
    </a>
    <p>作：{{ img[1] }}</p>
  </div>
  {% endfor %}
</div>

<!-- ![19sj]({{ site.baseurl }}/assets/img/gallery/chirashi2019/chirashi19sj.jpg){:width="200px"}
![19sj]({{ site.baseurl }}/assets\img\gallery\chirashi2019\chirashi19nk1-th.jpg){:width="200px"} -->