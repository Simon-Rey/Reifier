---
layout: default
permalink: /about
title: Réifier Furniture Maker
content_wrap_id: content-homepage-wrap
sitemap:
  priority: 1
---


{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign about_trans = site.data[translation_key].about %}

{{ about_trans.bio }}