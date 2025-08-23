---
layout: default
permalink: /
title_id: index
content_wrap_id: content-homepage-wrap
sitemap:
  priority: 1
---

{% capture translation_key %}translation_{{ site.active_lang }}{% endcapture %}
{% assign index_trans = site.data[translation_key].index %}

<h1>{{ index_trans.title }}</h1>

<div id="reify-definition-wrap">
<div id="reify-definition" markdown="1">
{{ index_trans.definition }}
</div>
</div>

{{ index_trans.welcome }}

<p class="center-align"><a class="button navigation-button" href="{{ 'your-project' | relative_url  }}">{{ index_trans.project_link }}</a></p>

<h2>{{ index_trans.creations_section.title }}</h2>

{% assign main_images = "" | split: "" %}

{% for creation in site.data.creations %}
  {% assign image_info = creation.main_image | append: "||" | append: creation.name | append: "||" | append: creation.url_tag %}
  {% assign main_images = main_images | push: image_info %}
{% endfor %}

{% assign shuffled_images = main_images | sample: main_images.size %}

<div id="index-creation-gallery-wrap">
  <div id="index-creation-gallery-image-wrap">
    <div>
      <button class="index-creation-gallery-arrow" onclick="prevImage()">&#10094;</button>
    </div>
    <div id="index-creation-gallery-display">
      <a id="creation-gallery-image-link" class="creation-gallery-link" href="">
        <img id="creation-gallery-active-image" alt="Active Image">
      </a>
        
      <div id="index-creation-gallery-caption">
        <a class="creation-gallery-link navigation-button" href="">
          {{ main_images[0].name }}
        </a>
      </div>

    </div>
    <div>
      <button class="index-creation-gallery-arrow" onclick="nextImage()">&#10095;</button>
    </div>
  </div>
  
</div>

<p class="center-align" style="margin-top: 20px;"><a class="button navigation-button" href="{{ 'creations' | relative_url  }}">{{ index_trans.explore_button }}</a></p>

<h2>{{ index_trans.training_section.title }}</h2>

{{ index_trans.training_section.text }}

<p class="center-align"><a class="button navigation-button" href="{{ 'training' | relative_url  }}">{{ index_trans.training_section.button }}</a><p>

<script>
    let creations = [
        {% for creation in site.data.creations %}
            {
                image: "{{ '/assets/photo/1200/' | append: creation.main_image | append: '.webp' | relative_url }}",
                name: "{{ creation.name }}",
                url: "{{ 'creations/' | append: creation.url_tag | relative_url | localized_url }}"
            }{% unless forloop.last %},{% endunless %}
        {% endfor %}
    ];

    // Shuffle the creations
    creations = creations.sort(() => 0.5 - Math.random());

    let currentIndex = 0;

    function setActiveImage(index) {
        const activeImage = document.getElementById("creation-gallery-active-image");
        const creationLinks = document.getElementsByClassName("creation-gallery-link");

        activeImage.src = creations[index].image;
        activeImage.alt = creations[index].name + " - Custom Furniture by Réifier";

        for (let link of creationLinks) {
            link.href = creations[index].url;
            
            // Only update text content for the caption link (not the image link)
            if (link.id !== "creation-gallery-image-link") {
                link.textContent = creations[index].name;
            }
        }
    }

    function prevImage() {
        currentIndex = (currentIndex - 1 + creations.length) % creations.length;
        setActiveImage(currentIndex);
    }

    function nextImage() {
        currentIndex = (currentIndex + 1) % creations.length;
        setActiveImage(currentIndex);
    }

    setActiveImage(0);
</script>
