---
layout: default
permalink: /
title_id: index
content_wrap_id: content-homepage-wrap
sitemap:
  priority: 1
---

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign index_trans = site.data[translation_key].index %}

<div id="reify-definition-wrap">
<div id="reify-definition" markdown="1">
{{ index_trans.definition }}
</div>
</div>

{{ index_trans.welcome }}

