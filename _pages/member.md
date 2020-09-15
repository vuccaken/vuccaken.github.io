---
title: Member

B1:
  - [大, 募集, 中！]
B2:
  - [理工, 物理, 4名]
  - [理工, 機械, 1名]
B3:
  - [理工, 機械, 1名]
B4:
  - ["null", "null", NAN名]
M1:
  - [理工, 物理, 2名]
  - [理工, ロボ, 1名]
M2:
  - [理工, 物理, 1名]
OB18:
  - [理工, 電気電子, 2名]
---

{:id="hierarchy”}
## 会員構成

新規入会はいつでも大歓迎です！！
{% include pages/member-str.html isOB=false %}

{:id="list"}
## 会員リスト

{% include pages/member-list.html member-src=site.data.members %}


{:id="OB"}
## 名誉会員（OB）

{% include pages/member-str.html isOB=true %}

{% include pages/member-list.html member-src=site.data.members-ob %}
