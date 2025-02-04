---
layout: default
permalink: /about
title: Réifier Furniture Maker
content_wrap_id: content-about-wrap
sitemap:
  priority: 1
---

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign about_trans = site.data[translation_key].about %}

<h1>{{ about_trans.title }}</h1>


<div id="work-ethic-wrap" class="about-block-wrap">

<div>
<img src="{{ '/assets/photo/creation/kubus/kubus_3.webp' | relative_url }}">
</div>

<div markdown="1">

<h2>{{ about_trans.work_ethics.header }}</h2>

{{ about_trans.work_ethics.content }}

</div>
</div>


<div id="biography-wrap" class="about-block-wrap">

<div>

<h2>{{ about_trans.bio.header }}</h2>

<p>{{ about_trans.bio.content }}</p>

</div>

<div>
<img src="{{ '/assets/photo/portrait/portrait_5.webp' | relative_url }}">
</div>

</div>
