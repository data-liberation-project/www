---
title: APHIS Inspection Reports
date: 2023-02-20T00:00:00-05:00
data_through: Ongoing
update_freq: Daily
entrypoint:
  title: GitHub repository
  href: https://github.com/data-liberation-project/aphis-inspection-reports
summary: Data on Animal Welfare Act inspections of commercial animal dealers, exhibitors (such as zoos), research facilities, and transporters.

---

The [Animal Welfare Act](https://www.aphis.usda.gov/aphis/ourfocus/animalwelfare/awa/ct_awa_program_information) sets minimum standards of animal care by [four main types of licensees](https://www.aphis.usda.gov/aphis/ourfocus/animalwelfare/sa_regulated_businesses): commercial animal dealers, exhibitors (such as zoos), research facilities, and transporters. The USDA’s [Animal and Plant Health Inspection Service](https://www.aphis.usda.gov/aphis/home/) (APHIS) tries to make sure licensees meet those standards, and issues violation citations when they do not. 

The agency provides an [online portal containing its inspections](https://efile.aphis.usda.gov/PublicSearchTool/s/inspection-reports) but, frustratingly, no option to download the full dataset. The portal’s structured data also lack important information, such as the type of inspection and the list of species inspected — information that is available only in the inspection report PDFs.

The Data Liberation Project collaborated with [Big Local News](https://biglocalnews.org/content/about/)’s [Ben Welsh](https://palewi.re/who-is-ben-welsh/) to fetch the 80,000+ published inspection reports, parse the PDFs, and make the records all-around more useful.

We're providing these main resources in [the project's GitHub repository](https://github.com/data-liberation-project/aphis-inspection-reports) (and also automatically updating them in the [biglocalnews.org](https://biglocalnews.org/) portal):

- A [CSV spreadsheet of every inspection](https://github.com/data-liberation-project/aphis-inspection-reports/blob/main/data/combined/inspections.csv) (date, entity, inspection type, violation counts, license number, license type) going back to 2014. 
- Another [CSV listing all species-level counts of the animals inspected](https://github.com/data-liberation-project/aphis-inspection-reports/blob/main/data/combined/inspections-species.csv).
- An [RSS feed](https://data-liberation-project.github.io/aphis-inspection-reports/latest-inspections.rss) listing the inspections we've most recently *discovered*, and [another](https://data-liberation-project.github.io/aphis-inspection-reports/latest-critical-inspections.rss) limited to inspections with critical citations.

We’ve also uploaded all the inspection report PDFs to a [public, searchable project on DocumentCloud](https://www.documentcloud.org/app?q=%2Bproject%3Ausda-aphis-inspection-rep-211004%20).
