# Publishing platform: Jekyll / GitHub Pages

> The publishing-platform layer. When the `voice/` folder is present, the core
> skill's *Front matter and formatting* section defers to this file. It
> describes the front matter and formatting conventions for one specific blog
> (a medical-device-security-focused Jekyll/GitHub Pages site).

## Jekyll front matter

Every post needs complete front matter. Jekyll won't render without it. Use this template:

```yaml
---
layout: post
title: "Descriptive Title With Primary Keyword"  # 50-60 chars
date: YYYY-MM-DD HH:MM:SS -0500
last_modified_at: YYYY-MM-DD HH:MM:SS -0500
categories: [security, infrastructure]
tags: [docker, nginx, ssl]  # 3-5 tags
description: "Meta description under 160 chars with keyword and value prop."
author: "Author Name"
image:
  path: /assets/images/featured-image.webp
  alt: "Descriptive alt text for the featured image"
permalink: /blog/url-friendly-slug/
toc: true
---
```

## SEO placement checklist

Primary keyword appears in:

1. Title/H1
2. First paragraph
3. At least one H2
4. Meta description (`description` field)
5. URL slug (`permalink`)
6. Image alt text

## Formatting conventions

- Fenced code blocks with language identifiers (Rouge syntax highlighting).
- Use `diff` language ID with `+`/`-` prefixes for showing changes.
- Inline code (single backticks) for commands, filenames, variables.
- Images: WebP, under 100KB, always specify width/height, `loading="lazy"`.
- Internal links use `{% post_url %}` Liquid tags when linking other posts.
