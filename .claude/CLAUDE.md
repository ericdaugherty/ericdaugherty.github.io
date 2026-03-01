# CLAUDE.md

## Project Overview

This is the source repository for [www.ericdaugherty.com](http://www.ericdaugherty.com), a personal website built with Jekyll and hosted on GitHub Pages. The GitHub repo is `ericdaugherty/ericdaugherty.github.io`.

## Build & Development

- **Static site generator:** Jekyll (Ruby-based)
- **Local dev server:** `./test.sh` (runs `jekyll serve . --watch`)
- **Deployment:** Automatic via GitHub Pages on push to `master`
- **Custom domain:** Configured via `CNAME` file

## Project Structure

- `_layouts/` — Page templates: `default.html`, `page.html`, `post.html`
- `_includes/` — Reusable HTML partials (head, header, footer, sidebar, project-specific navbars)
- `_sass/` — SCSS partials (`_base.scss`, `_layout.scss`, `_syntax-highlighting.scss`)
- `css/` — SCSS entry point (`main.scss`) and legacy stylesheet (`global.css`)
- `apps/` — Application pages (playlistexport, simplemailprocessor)
- `dev/` — Open-source project documentation (cses, itunesexport, sshwebproxy, soht)
- `images/` — Site images
- `syntax/` — SyntaxHighlighter JS library for code blocks
- `_posts/` — Blog posts (currently empty; blog is external at blog.ericdaugherty.com)

## Key Configuration

- **`_config.yml`** — Jekyll config (title, URL, excludes, markdown engine)
- **Markdown engine:** kramdown
- **Analytics:** Google Analytics GA4 (gtag.js, ID: `G-M36W71786Z`) in `_includes/head.html`

## Style Conventions

- SCSS variables defined in `css/main.scss` (font, colors, breakpoints)
- Responsive breakpoints: `$on-palm: 600px`, `$on-laptop: 800px`
- Content width: `800px`
- CSS class naming: `.post-`, `.page-`, `.site-` prefixes

## Notes

- `css/global.css` is a legacy stylesheet still loaded alongside the compiled SCSS
- The `_site/` directory is generated output (gitignored)
- `test.sh` is excluded from Jekyll builds
