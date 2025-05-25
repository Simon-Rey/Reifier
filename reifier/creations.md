---
layout: default
permalink: /creations
title_id: creations
content_wrap_id: content-creations-wrap
sitemap:
  priority: 1
---

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign creations_trans = site.data[translation_key].creations %}

## {{ creations_trans.signature.title }}

{{ creations_trans.signature.description }}

<div class="creations-container">
  {% for creation in site.data.creations %}
    {% if creation.signature %}
      <div class="creation-card">
        <a href="{{ 'creations/' | append: creation.url_tag | relative_url }}">
          <div class="creation-image-wrap">
            <img src="{{ creation.main_image | relative_url }}" alt="Image of the {{ creation.name }} creation" class="creation-image">
          </div>
          <h3 class="creation-name">{{ creation.name }}</h3>
        </a>
      </div>
    {% endif %}
  {% endfor %}
</div>

## {{ creations_trans.bespoke.title }}

{{ creations_trans.bespoke.description }}

<div class="creations-container">
  {% for creation in site.data.creations %}
    {% unless creation.signature %}
      <div class="creation-card">
        <a href="{{ 'creations/' | append: creation.url_tag | relative_url }}">
          <div class="creation-image-wrap">
            <img src="{{ creation.main_image | relative_url }}" alt="{{ creation.name }}" class="creation-image">
          </div>
          <h3 class="creation-name">{{ creation.name }}</h3>
        </a>
      </div>
    {% endunless %}
  {% endfor %}
</div>