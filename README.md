# data-liberation-project.org

This repository contains the content and publishing commands powering [data-liberation-project.org](https://www.data-liberation-project.org/).

## Content

The repository uses the [Hugo](https://gohugo.io/) website builder, and the content follows Hugo's structure and conventions.

- [`config.toml`](config.toml): Hugo's top-level configuration file, including some website metadata and deployment details.
- [`content/`](content/): Markdown files each representing a page on the website. Each subdirectory also contains an `_index.md` file, which specifies the Markdown content for the subdirectory root page.
    - [`content/singleton/`](content/singleton/): One-off pages, such as `/about`, `/contact`, and `/newsletter`, in addition to the 404 page.
    - [`content/requests/`](content/requests/): One file per request we've filed.
    - [`content/datasets/`](content/datasets/): One file per dataset we've released.
    - [`content/documents/`](content/documents/): One file per non-data document set we've released.
- [`layouts/`](layouts/): HTML/XML files describing the layout and logic of each set of pages, largely corresponding to the `content/` structure above. Beyond that: [`layouts/shortcodes/`](layouts/shortcodes/) defines a couple of [custom Hugo shortcodes](https://gohugo.io/content-management/shortcodes/), [`layouts/partials/`](layouts/partials/) defines reusable components (such as the HTML header and footer, as well as the "chip" motif that appears in several parts of the site), and [`layouts/index.html`](layouts/index.html) defines the homepage layout.
- [`assets/css/index.css`](assets/css/index.css): The main CSS for the website.

### Updating Requests

When a request's status changes or there's another major development relating to it, you can reflect these changes in the file, by doing the following:

#### 1. Add an entry to the `updates:` frontmatter list 

The page layout for requests accepts an `updates:` field in the Markdown file's frontmatter. E.g., here's an excerpt from [`content/requests/acl-adult-maltreatment-reporting-system.md`](content/requests/acl-adult-maltreatment-reporting-system.md):

```
updates:
- date: 2024-05-14T10:30:00-04:00
  title: Records Published
  body: >-
    On May 14, 2024, the Data Liberation Project [published the responsive records](/datasets/national-adult-maltreatment-reporting-system), along with [documentation](https://docs.google.com/document/d/1gQVAWoC-vg__aN7YnZ_thkiCh2WbdCX9U0jIvrMiL5g/edit) describing what it has learned about them.
```

If the request's frontmatter does not already have an `updates:` field, you can add one. The field's type is a list of dictionaries, where each dictionary is an update and requires a `date`, `title`, and `body` field. To add the update, add a new dictionary entry. (The order does not matter; when rendering, the updates will be sorted by `date`.)

#### 2. Update the `last_updated:` field

This should match the date (without the time) of the new entry you added above.

#### 3. Update the `status:` field (optional)

If the status has changed in a substantial way (e.g., from Submitted to Acknowledged), update the `status:` field to reflect that.

### Updating Datasets / Documents

The process for updating dataset / document release pages is similar to that for updating requests, except that the `last_updated:` field should not necessarily match the most recent update, but *rather* the most recent date that *the DLP-published materials* were updated.

## Building The Site

### Install Hugo

This project depends on [Hugo v0.128.0](https://github.com/gohugoio/hugo/releases/tag/v0.128.0). The project may not work with newer versions.

To install an older version of Hugo, download the build suitable for your system, unpack it, and execute the `hugo` binary.

### Makefile

To build the site, run `make build`; this will run `hugo build` and place the rendered files in the [`public/`](public/) directory.

To serve the site locally, run `make serve` or `make serve-future` (the latter of which will also show future-dated pages).
