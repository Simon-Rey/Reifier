---
layout: default
sitemap:
  priority: 1
---

{% assign workshop_object = site.data.workshops | where: "url_tag", page.workshop_url_tag | first %}

{% if workshop_object %}
  <h1>{{ workshop_object.name }}</h1>

  {{ workshop_object.description[site.active_lang] | markdownify }}

  {% assign images = workshop_object.images %}
  {% include creation_gallery.html images=images %}
{% else %}
  <p>Error: Workshop not found.</p>
{% endif %}
