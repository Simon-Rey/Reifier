---
layout: default
permalink: /creations
title_id: creations
content_wrap_id: content-creations-wrap
sitemap:
  priority: 1
---


<div class="creations-container">
  {% for creation in site.data.creations %}
    <div class="creation-card">
      <a href="{{ '/creations/' | append: creation.url_tag | relative_url }}">
        <img src="{{ creation.main_image | relative_url }}" alt="{{ creation.name }}" class="creation-image">
        <h3 class="creation-name">{{ creation.name }}</h3>
      </a>
    </div>
  {% endfor %}
</div>
