---
layout: default
permalink: /training
title_id: training
content_wrap_id: content-training-wrap
sitemap:
  priority: 1
---

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign training_trans = site.data[translation_key].training %}

## {{ training_trans.workshops.title }}

{{ training_trans.workshops.description }}

<div class="creations-container">
  {% for workshop in site.data.workshops %}
    <div class="creation-card">
      <a href="{{ 'workshops/' | append: workshop.url_tag | relative_url }}">
        <div class="creation-image-wrap">
            <img
              {% include img-responsive-content.html name=workshop.main_image default_size="400" %}
              sizes="(max-width: 550px) 50vw, (max-width: 800px) 33vw, (max-width: 1200px) 25vw, (min-width: 2000px) 15vw, 20vw"
              alt="Image of the {{ creation.name }} training from Reifier, furniture maker in Amsterdam."
              class="creation-image"
            >
        </div>
        <h3 class="creation-name navigation-button">{{ workshop.name }}</h3>
      </a>
    </div>
  {% endfor %}
</div>

## {{ training_trans.personalised_sessions.title }}

{{ training_trans.personalised_sessions.description }}

## {{ training_trans.booking.title }}

{{ training_trans.booking.description | markdown }}

<p class="center-align">
<a href="{{ 'contact' | relative_url  }}" class="button navigation-button">{{ training_trans.contact_button }}</a>
</p>
