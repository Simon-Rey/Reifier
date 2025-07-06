---
layout: default
permalink: /legals
title_id: legals
content_wrap_id: content-legals-wrap
sitemap:
  priority: 1
---

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign legals_trans = site.data[translation_key].legals %}

<h1>{{ legals_trans.title }}</h1>

<h2>{{ legals_trans.company_information.title }}</h2>

<p><strong>{{ legals_trans.company_information.name }}:</strong> Reifier</p>
<p><strong>{{ legals_trans.company_information.address }}:</strong> Zamenhofstraat 106D, 1022 AG Amsterdam, The Netherlands</p>
<p><strong>{{ legals_trans.company_information.registration_number }}:</strong> 96832606, Amsterdam</p>
<p><strong>{{ legals_trans.company_information.vat_number }}:</strong> NL005235697B42</p>
<p><strong>{{ legals_trans.company_information.email }}:</strong> <a href="mailto:contact@reifier.nl">contact@reifier.nl</a></p>
<p><strong>{{ legals_trans.company_information.phone }}:</strong> +31 6 1589 7070</p>

<h2>{{ legals_trans.intellectual_property.title }}</h2>

{{ legals_trans.intellectual_property.text }}

<h2>{{ legals_trans.restriction_on_use.title }}</h2>

{{ legals_trans.restriction_on_use.text }}

<h2>{{ legals_trans.external_links.title }}</h2>

{{ legals_trans.external_links.text }}

<h2>{{ legals_trans.liability.title }}</h2>

{{ legals_trans.liability.text }}

<h2>{{ legals_trans.contact.title }}</h2>

<p>{{ legals_trans.contact.text }}: <a href="mailto:contact@reifier.nl">contact@reifier.nl</a>.</p>
