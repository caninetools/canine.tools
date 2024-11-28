---
layout: default
title: "News"
description: "canine.tools news & updates."
permalink: /news/
---
All news for canine.tools. Nothing fancy!
 {% for post in site.posts %}
<h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
{% endfor %}