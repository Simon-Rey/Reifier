---
layout: default
permalink: /creations/kubus
title_id: kubus 
content_wrap_id: content-kubus-wrap
sitemap:
  priority: 1
---

# Kubus

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign kubus_trans = site.data[translation_key].kubus %}

{{ kubus_trans.description }}

{% assign kubus_object = site.data.creations | where: "name", "Kubus" | first %}

{% assign images = kubus_object.images %}
{% include creation_gallery.html images=images %}