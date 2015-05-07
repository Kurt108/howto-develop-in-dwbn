---
layout: default
title: "Howto to develop in DWBN"
---

### Get Started

Start by [creating a new post](http://jekyllrb.com/docs/posts/) one of the categories listed in `_config.yml`. It will appear in the navigation on the left once recompiled. Or use the supplied script to make creating pages easier:

```bash
ruby bin/jekyll-page "Some Page Title" ref
```

  {% highlight ruby %}
  {% include_relative code/init.sls %}
  {% endhighlight %}


[composer](https://github.com/JaXt0r/devops-dwbn/blob/fff2a843702a7ebf46b35c2a26794df531a3d68a/qa/composer/init.sls#L7-22)

#### Don't Forget

- Add your own content to this page (i.e. `index.md`) and change the `title`
- Change `title` and `subtitle` defined in `config.yml` for your site
- Set the `baseurl` in `_config.yml` for your repo if deploying to GitHub pages
