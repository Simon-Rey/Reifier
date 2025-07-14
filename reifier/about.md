---
layout: default
permalink: /about
title_id: about
content_wrap_id: content-about-wrap
sitemap:
  priority: 1
---

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign about_trans = site.data[translation_key].about %}

<h1>{{ about_trans.title }}</h1>


<div id="work-ethic-wrap" class="about-block-wrap">

<div>
<img 
  {% include img-responsive-content.html name="0A3134E8-FE95-465C-BCBF-B7CD97F3B435" %}
  alt="Final state of a creation of Reifier, furniture maker in Amsterdam"
  sizes="(max-width: 1200px) 1vw, 22vw"
>
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
<img
  {% include img-responsive-content.html name="5954864B-A032-460F-9404-446C17B33B24" %}
  alt="Portrait of Simon Rey, owner of Reifier, Furniture maker in Amsterdam"
  sizes="(max-width: 1200px) 100vw, 27vw"
>
</div>

</div>
