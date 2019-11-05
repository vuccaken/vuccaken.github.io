---
title: Special
rp2017xy: https://vuccaken.github.io/rp2017xy/
chirashi2019:
  - [sj.jpg, sj, moe]
  - [nsmr.jpg, nsmr, フリー素材]
  - [nkym1.jpg, nkym, ラ！]
  - [nkym2.jpg, nkym, インターネット黎明期]
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
    <!-- <div class="info">テーマ：{{ img[2] }}</div> -->
    <!-- <div class="info">　　作：{{ img[1] }}</div> -->
    <table>
      <tr><td class="row1">テーマ：</td><td class="row2">{{ img[2] }}</td></tr>
      <tr><td class="row1">作：</td><td class="row2">{{ img[1] }}</td></tr>
    </table>
  </div>
  
  {% endfor %}
</div>

<!-- ![19sj]({{ site.baseurl }}/assets/img/gallery/chirashi2019/chirashi19sj.jpg){:width="200px"}
![19sj]({{ site.baseurl }}/assets\img\gallery\chirashi2019\chirashi19nk1-th.jpg){:width="200px"} -->