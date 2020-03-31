---
title: Member

B1:
  - ["null", "null", NAN名]
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


## 会員構成

{% include pages/member-str.html isOB=false %}

## 会員リスト

{% include pages/member-list.html member-src=site.data.members %}


## 名誉会員（OB）

{% include pages/member-str.html isOB=true %}

{% include pages/member-list.html member-src=site.data.members-ob %}
