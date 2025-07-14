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
            <img
              {% include img-responsive-content.html name=creation.main_image default_size="400" %}
              sizes="(max-width: 600px) 80vw, (max-width: 900px) 40vw, 250px"
              alt="Image of the {{ creation.name }} creation from Reifier, furniture maker in Amsterdam."
              class="creation-image"
            >
          </div>
          <h3 class="creation-name navigation-button">{{ creation.name }}</h3>
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
            <img
              {% include img-responsive-content.html name=creation.main_image default_size="400" %}
              sizes="(max-width: 600px) 80vw, (max-width: 900px) 40vw, 250px"
              alt="Image of the {{ creation.name }} creation from Reifier, furniture maker in Amsterdam."
              class="creation-image"
            >
          </div>
          <h3 class="creation-name navigation-button">{{ creation.name }}</h3>
        </a>
      </div>
    {% endunless %}
  {% endfor %}
</div>