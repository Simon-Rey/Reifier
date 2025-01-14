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

<h2>{{ about_trans.work_ethics.header }}</h2>

{{ about_trans.work_ethics.content }}

<h2>{{ about_trans.bio.header }}</h2>

{{ about_trans.bio.content }}
