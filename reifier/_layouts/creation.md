---
layout: default
sitemap:
  priority: 1
---

{% assign creation_object = site.data.creations | where: "name", page.creation_name | first %}

{% if creation_object %}
  <h1>{{ creation_object.name }}</h1>

  {{ creation_object.description[site.active_lang] | markdownify }}

  {% assign images = creation_object.images %}
  {% include creation_gallery.html images=images %}
{% else %}
  <p>Error: Creation not found.</p>
{% endif %}
