# How to Update the Site

This guide walks through how to add or update content on [data-liberation-project.org](https://www.data-liberation-project.org/). It covers three types of pages — **requests**, **datasets**, and **documents** — and how to preview and publish your changes.

---

## Overview

The site is powered by [Hugo](https://gohugo.io/), a static site generator. That means the site's content lives as plain text files (Markdown files ending in `.md`) in this repository. When you push a change to the `main` branch on GitHub, the site automatically rebuilds and publishes within a minute or two.

Each type of content lives in its own folder:

| Content type | Folder | Example URL |
|---|---|---|
| FOIA requests | `content/requests/` | `/requests/acl-adult-maltreatment-reporting-system` |
| Published datasets | `content/datasets/` | `/datasets/national-adult-maltreatment-reporting-system` |
| Published documents | `content/documents/` | `/documents/cfpb-enforcement-database-documentation` |

---

## Understanding the File Format

Each content file is a Markdown file with two sections:

1. **Frontmatter** — structured metadata at the top of the file, surrounded by `---` lines. This is where fields like `title`, `status`, `date`, and `updates` live.
2. **Body** — freeform text written in Markdown below the frontmatter. This becomes the main paragraph content of the page.

Here's a simplified example:

```
---
title: My FOIA Request          ← page title
status: Acknowledged            ← current status
last_updated: 2024-06-01        ← date of most recent update
updates:
- date: 2024-06-01T09:00:00-04:00
  title: Request Acknowledged
  body: >-
    The agency acknowledged our request on June 1, 2024.
---

This is the main body of the page. It supports **bold**, *italic*, and [links](https://example.com).
```

---

## Setting Up Locally (Optional but Recommended)

If you want to preview your changes before publishing, you'll need to install Hugo and run the site on your computer. This is optional — you can also edit files and push directly, then check the live site — but local preview is helpful for catching mistakes.

### Step 1: Install Hugo

This site requires **Hugo v0.128.0 (Extended)**. Newer versions may not work, so use this specific version.

**On a Mac:**

1. Go to the [Hugo v0.128.0 release page](https://github.com/gohugoio/hugo/releases/tag/v0.128.0).
2. Under "Assets," download `hugo_extended_0.128.0_darwin-universal.tar.gz`.
3. Open your Downloads folder. Double-click the downloaded file to unpack it. You'll see a file called `hugo` appear.
4. Open Terminal. Run this command to move `hugo` to a folder where your computer can find it:
   ```
   sudo mv ~/Downloads/hugo /usr/local/bin/hugo
   ```
   You'll be prompted for your Mac password.
5. Verify it worked by running:
   ```
   hugo version
   ```
   You should see output mentioning `v0.128.0`.

**On Windows:**

1. Go to the [Hugo v0.128.0 release page](https://github.com/gohugoio/hugo/releases/tag/v0.128.0).
2. Under "Assets," download `hugo_extended_0.128.0_windows-amd64.zip`.
3. Unzip the file and place `hugo.exe` somewhere on your system PATH (e.g., `C:\Program Files\Hugo\`).

### Step 2: Clone the Repository (if you haven't already)

```
git clone git@github.com:data-liberation-project/www.git
cd www
```

### Step 3: Preview the Site

From inside the `www` folder, run:

```
make serve
```

Then open your browser and go to `http://localhost:1313`. The site will automatically reload as you save changes to files.

> **Tip:** If you need to preview pages with a future publication date, use `make serve-future` instead.

---

## Updating a Request Page

Request pages live in `content/requests/`. Each file corresponds to one FOIA request.

### When to update

Update a request page when there's a meaningful development: the agency responds, sends records, denies the request, you file an appeal, etc.

### What to change

Open the relevant `.md` file in `content/requests/`. You'll make changes to the frontmatter — specifically:

#### 1. Add a new entry to `updates:`

Each update is a list item with three fields: `date`, `title`, and `body`. Add your new entry at the **top** of the list (though order doesn't technically matter — the site sorts by date automatically).

```yaml
updates:
- date: 2024-09-15T14:00:00-04:00    ← date and time (with timezone offset)
  title: Records Received             ← short title for this update
  body: >-                            ← the ">-" tells Hugo this is a multi-line value
    On September 15, 2024, the agency provided responsive records.
    We are reviewing them now.
```

**Date format:** `YYYY-MM-DDTHH:MM:SS-HH:MM`
- `T` separates the date from the time
- The time can be approximate (e.g., `10:00:00`)
- The timezone offset for Eastern Time is `-05:00` (EST) or `-04:00` (EDT)

**Body format:** The `>-` on the `body:` line means everything indented below it is treated as a single paragraph. You can include [Markdown links](https://example.com) in the body text.

#### 2. Update `last_updated:`

Change this to the date of the update you just added, in `YYYY-MM-DD` format:

```yaml
last_updated: 2024-09-15
```

#### 3. Update `status:` (if it changed)

Common statuses used on the site:

- `Submitted`
- `Acknowledged`
- `Partially Fulfilled`
- `Appealing`
- `Appeal Denied`
- `Liberated`

If the request has been fulfilled and you're publishing a dataset, also add `status_link:` pointing to the dataset page:

```yaml
status: Liberated
status_link: "/datasets/my-dataset-slug"
```

### Full example

Here's what a request file's frontmatter looks like with multiple updates:

```yaml
---
title: National Adult Maltreatment Reporting System
agency: Department of Health and Human Services (HHS) ▹ Administration for Community Living (ACL)
date: 2023-02-17T00:00:00-05:00
status: Liberated
status_link: "/datasets/national-adult-maltreatment-reporting-system"
request_id: 00017473-FOIA-ACL
last_updated: 2024-05-14
summary: We're requesting data from "the first comprehensive, national reporting system for adult protective services programs."
request_letter: https://www.documentcloud.org/documents/23685196-...
updates:
- date: 2024-05-14T10:30:00-04:00
  title: Records Published
  body: >-
    On May 14, 2024, the Data Liberation Project [published the responsive records](/datasets/national-adult-maltreatment-reporting-system).
- date: 2024-04-10T11:25:00-04:00
  title: Records Received, DLP Processing
  body: >-
    On April 10, 2024, ACL provided a data transfer completing its provision of records.
- date: 2023-02-23T09:14:00-05:00
  title: Request Acknowledged
  body: >-
    On February 23, 2023, ACL sent an email acknowledging our request.
---
```

---

## Updating a Dataset Page

Dataset pages live in `content/datasets/`. Each file corresponds to one published dataset.

### When to update

Update a dataset page when the underlying data is refreshed, new files are added, or the documentation changes. The `last_updated` field on a dataset page should reflect when **the DLP-published materials themselves** changed — not just when you added a note.

### What to change

The structure is similar to request pages. Open the relevant file in `content/datasets/` and:

#### 1. Add a new entry to `updates:` (if the list exists)

Same format as request updates — `date`, `title`, and `body`. If the file doesn't already have an `updates:` section, you can add one following the same format.

#### 2. Update `last_updated:`

Set this to the date the published data or documentation was actually updated:

```yaml
last_updated: 2024-09-15T00:00:00-04:00
```

Note that on dataset pages, `last_updated` uses the full timestamp format (not just `YYYY-MM-DD`).

#### 3. Update `data_through:` (if applicable)

This field describes the time range of the data (e.g., `September 2022` or `Ongoing`). Update it if the new data covers a more recent period.

### Key dataset frontmatter fields

```yaml
---
title: My Dataset Title
date: 2024-01-01T00:00:00-05:00      ← original publication date (don't change)
last_updated: 2024-09-15T00:00:00-04:00
data_through: September 2024          ← how recent the data is
update_freq: FOIA-dependent           ← how often it updates
related_request: my-request-slug      ← filename (without .md) of the linked request
entrypoint:
  title: GitHub repository            ← link label for the main data download
  href: https://github.com/...        ← URL for the main data download
summary: One-sentence description of the dataset.
---
```

---

## Updating a Document Page

Document pages live in `content/documents/`. These are for non-data materials we've obtained and published, such as database schema documentation.

The update process is identical to datasets. The same fields apply (`last_updated`, `data_through`, `updates`), with the same rule: `last_updated` should reflect when the published materials changed.

---

## Publishing Your Changes

Once you've made your edits, push them to GitHub and the site will rebuild automatically.

```bash
# Stage your changed file(s)
git add content/requests/my-request.md

# Commit with a short description of what you changed
git commit -m "Update status on My Request to Acknowledged"

# Push to main — this triggers the site to rebuild
git push origin main
```

The site typically rebuilds within 1–2 minutes. You can watch the progress under the **Actions** tab in the GitHub repository.

---

## Quick Reference

### Frontmatter date formats

| Field | Format | Example |
|---|---|---|
| `date` (page creation) | `YYYY-MM-DDTHH:MM:SS±HH:MM` | `2024-01-15T00:00:00-05:00` |
| `last_updated` on requests | `YYYY-MM-DD` | `2024-09-15` |
| `last_updated` on datasets/documents | `YYYY-MM-DDTHH:MM:SS±HH:MM` | `2024-09-15T00:00:00-04:00` |
| `date` on an update entry | `YYYY-MM-DDTHH:MM:SS±HH:MM` | `2024-09-15T14:00:00-04:00` |

### Timezone offsets

- Eastern Standard Time (EST, Nov–Mar): `-05:00`
- Eastern Daylight Time (EDT, Mar–Nov): `-04:00`

### Markdown basics

| Syntax | Result |
|---|---|
| `**bold text**` | **bold text** |
| `*italic text*` | *italic text* |
| `[link text](https://example.com)` | [link text](https://example.com) |
| `[internal link](/datasets/my-dataset)` | link to another page on the site |
