---
layout: default
title: Home
---

{% include jumbotron.html %}

<hr class = "border border-dark border-2 opacity-100">

### The Mississippi Choctaws of today carry on the traditions left to them by their ancestors.  This site is dedicated to the preservation and perpetuity of the lifeways of the Mississippi Choctaws.  Our website features a series of videos highlighting cultural topics, a gallery of Mississippi Choctaw images, media resources, and project partner links. We invite you to explore our site and learn more about the cultural life ways of the Mississippi Band of Choctaw Indians.

<hr class = "border border-dark border-2 opacity-100">

{% include front-links.html %}

<br><br>

*Choctaw Cultural Legacy is a non-profit educational website of the Mississippi Band of Choctaw Indians for the purpose of providing an educational glimpse into the Choctaw culture.  Many of the items found on our website are used by permission from other organizations, and are for viewing only.  Usage of items is strictly prohibited, unless permission is explicitly given by the DCI-Special Projects / Media Program or the item’s source of origin.*



{% assign my_int = 0 %}
<div class="row row-cols-1 row-cols-lg-2 g-4">
  {% assign elders_shuffled = site.data.meet-our-elders.elders | shuffle %}
  {% for elder in elders_shuffled %}
  {% assign my_int = my_int | plus: 1 %}
  <div class="col">
    <div class="card">
      <img src="/assets/img/elders/{{ elder.image }}.webp" class="card-img-top" alt="{{ elder.firstname }} {{ elder.lastname }}">
      <div class="card-footer">
        <div class="accordion accordion-flush" id="accordion{{ my_int }}">
          <div class="accordion-item">
            <h2 class="accordion-header" id="heading{{ my_int }}">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{ my_int }}" aria-expanded="true" aria-controls="collapse{{ my_int }}">
                <h5>{{ elder.firstname }} {{ elder.lastname }} {% if elder.years %}({{ elder.years }}){% endif %}</h5>
              </button>
            </h2>
            <div id="collapse{{ my_int }}" class="accordion-collapse collapse" aria-labelledby="heading{{ my_int }}" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <p>{{ elder.description }}</p>
                <h5><strong><em>{{ elder.subtitle }}</em></strong></h5>
                <p>"{{ elder.quote }}"</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  {% endfor %}
</div>
