---
title: TSA Complaint Counts
date: 2024-02-21T00:00:00-05:00
data_through: Ongoing
update_freq: Daily
entrypoint:
  title: GitHub repository
  href: https://github.com/data-liberation-project/tsa-complaint-counts
summary: Monthly counts of Transportation Security Administration traveler complaints by airport, category, and subcategory.


---

In its [FOIA Electronic Reading Room](https://www.tsa.gov/foia/readingroom?page=0), the Transportation Security Administration (TSA) publishes semi-regular reports on the monthly numbers of traveler complaints by airport, category, and subcategory.

Unfortunately, they post these data only as PDFs ([e.g.](https://www.tsa.gov/sites/default/files/foia-readingroom/tsa-contact-center-traveler-complaints-report-may-2023.xlsm_.pdf)), rather than as [machine-readable data files](https://en.wikipedia.org/wiki/Machine-readable_medium_and_data#Data), posing substantial barriers to further analysis.

It’s an approach to “transparency” that leaves much to be desired. So the Data Liberation Project has built [a data pipeline](https://github.com/data-liberation-project/tsa-complaint-counts/tree/main) that converts those PDFs into CSV files. Now you can access the complaint counts as [tidy, standardized, machine-readable data](https://github.com/data-liberation-project/tsa-complaint-counts/tree/main?tab=readme-ov-file#data-guidance).

The records cover complaints at 440+ airports going back to January 2015; the Data Liberation Project aims to keep the pipeline and dataset updated.

In January 2025, TSA [temporarily removed](https://www.muckrock.com/news/archives/2025/may/19/tsa-complaint-data-disappeared-heres-where-you-can-still-find-it/) these complaints, with the agency resuming posting new complaint reports in July, with prior years’ reports remaining unavailable on their site.  The Data Liberation Project’s scraper is back up and running to archive these new reports.
