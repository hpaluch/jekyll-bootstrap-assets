---
menuOrder: 999
title: Sitemap
menuTitle: Sitemap
layout: default
description: Sitemap of SAMPLE site
keywords: sitemap sample
---

## Pages

{% for page in site.pages  %}
* [{{ page.title }}]({{ page.url }}){% endfor %}

## Blog entries

{% for post in site.posts  %}
* [{{ post.title }}]({{ post.url }}){% endfor %}

