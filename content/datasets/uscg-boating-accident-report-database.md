---
title: Boating Accident Report Database
date: 2024-08-12T20:00:00-04:00
last_updated: 2024-08-12T20:00:00-04:00
data_through: 2023
update_freq: FOIA-dependent
related_request: uscg-boating-accident-report-database
entrypoint:
  title: Introductory documentation
  href: https://docs.google.com/document/d/1BJxWLZtRZUZPBcUiCdGgoYMfkhiZTrmt80bKA44eDpg/edit?usp=share_link
summary: Data on 58,430 boating accidents that occurred in 2009–2023 and were reported to state authorities.

---

The US Coast Guard (USCG) maintains the **Boating Accident Report Database (BARD)**, which serves as a central, national database of recreational boating accidents. The data come from submissions of [CG-3865](https://www.dcms.uscg.mil/forms/smdsearch4081/3865/), a form that boat operators [must file to state authorities when](https://www.law.cornell.edu/cfr/text/33/173.55), “as a result of an occurrence that involves the vessel or its equipment”:

> (1) A person dies;
> 
> (2) A person is injured and requires medical treatment beyond first aid;
> 
> (3) Damage to vessels and other property totals $2,000 or more or there is a complete loss of any vessel;
> 
> (4) A person disappears from the vessel under circumstances that indicate death or injury.

_(Note: The $2,000 threshold was $500 prior to July 2, 2001.)_

The reports (and database) include details about each accident, vessel, death, and injury involved.

In January 2023, the Data Liberation Project (DLP) [filed](/requests/uscg-boating-accident-report-database/) a [Freedom of Information Act request 📄](https://www.documentcloud.org/documents/23588840-2023-01-27-dhsuscg-boating-accident-report-database-foia-request-singer-vine) seeking a full copy of the database, minus fields containing personally-identifiable information. The request also sought all relevant database documentation.

In April 2024, a representative of USCG contacted the DLP to ask whether we would consider narrowing our request so that it began with the year 2009: “Releasable data for years 2009-2022 is available for release, meaning records have been reviewed extensively to eliminate personally identifiable information and have been cleared for release by the State agencies that submitted them. However, years prior to 2009 would need to be reviewed for releasability, which would take a considerable amount of time.” The DLP agreed, and also agreed to wait for the release until the 2023 records were available.

On July 12, 2024, the USCG provided the requested records, which the Data Liberation Project is making fully available to the public:

- [Three Microsoft Access (.accdb) database files](https://dlp-cdn.muckrock.com/USCG%20Boating%20Accident%20Report%20Database%20(BARD)/Raw%20Files%20Received/index.html), each covering a distinct time period (2009–2013, 2014–2022, and 2023). To increase the accessibility of the records, the Data Liberation Project has also converted these files into [three additional formats](https://dlp-cdn.muckrock.com/USCG%20Boating%20Accident%20Report%20Database%20(BARD)/Converted%20Files/index.html): [SQLite](https://dlp-cdn.muckrock.com/USCG%20Boating%20Accident%20Report%20Database%20(BARD)/Converted%20Files/SQLite/index.html), [CSV](https://dlp-cdn.muckrock.com/USCG%20Boating%20Accident%20Report%20Database%20(BARD)/Converted%20Files/CSV/index.html) and [Parquet](https://dlp-cdn.muckrock.com/USCG%20Boating%20Accident%20Report%20Database%20(BARD)/Converted%20Files/Parquet/index.html).

- [A database dictionary](https://dlp-cdn.muckrock.com/USCG%20Boating%20Accident%20Report%20Database%20(BARD)/Raw%20Files%20Received/index.html) describing the data’s tables and fields.
  - Based on the specific fields included, it appears that this dictionary is based on the 2014–2022 version of the database.

- [A “notes” file](https://dlp-cdn.muckrock.com/USCG%20Boating%20Accident%20Report%20Database%20(BARD)/Raw%20Files%20Received/index.html) describing the compilation of the records, from the USCG Office of Auxiliary and Boating Safety.

In total, the records describe:

- 58,430 boating accidents
- 78,316 vessels involved in those incidents
- 8,935 deaths connected to those incidents
- 36,773 injuries connected to those incidents

To get started with the data, please consult the Data Liberation Project's [introductory documentation](https://docs.google.com/document/d/1lk0dnACzcj3Yo6DAjZbGKf_zFYkymor5IDwNxypnZpc/edit).
