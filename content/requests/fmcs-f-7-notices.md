---
title: Collective Bargaining Notices (FMCS F-7)
agency: Federal Mediation and Conciliation Service (FMCS)
date: 2023-08-25T00:00:00-04:00
status: Appeal Denied
request_id: FOIA-2024-00009
last_updated: 2024-03-07
summary: We're requesting detailed data on notices of "upcoming collective bargaining" submitted to federal labor mediators.
request_letter: https://www.documentcloud.org/documents/23927252-2023-08-25-fmcs-f-7-data-tables-foia-request-greggsinger-vine
updates:
  - date: 2024-03-07T16:16:00-05:00
    title: Appeal Denied
    body: >-
      On March 7, 2024, [FMCS denied our appeal 📄](https://www.documentcloud.org/documents/24554494-2024-03-07-2024-app-00033), determining that the redactions applied to the records were justified and that "identifiers were not withheld, rather they did not exist."
  - date: 2024-02-09T19:00:00-05:00
    title: Appeal Filed
    body: >-
      On February 9, 2024, we [submitted an appeal 📄](https://www.documentcloud.org/documents/24415944-2024-02-09-appeal-of-fmcs-foia-2024-00009) to FMCS regarding this case.
  - date: 2024-01-10T15:56:00-05:00
    title: Initial Response Received, Records Largely Withheld
    body: >-
      On January 10, 2024, FMCS emailed its [response to our request 📄](https://www.documentcloud.org/documents/24401529-2024-01-10-foia-partial-grant). The agency provided a large CSV file, with most of its content redacted, arguing that (1) “some of the records are exempt” via a “mediation privilege”, and (2) “some responsive records constitute confidential commercial or financial information”. The remaining, non-withheld records appear to be those already available through the [F-7 spreadsheets FMCS already publishes online](https://www.fmcs.gov/resources/documents-and-data/).
  - date: 2023-10-27T13:12:00-04:00
    title: Second Request Acknowledgment
    body: >-
      On October 27, 2023, FMCS emailed [a letter 📄](https://www.documentcloud.org/documents/24089899-2023-10-27-foia-acknowledgment-letter) acknowledging this request and assigning it tracking number FOIA-2024-00009.
  - date: 2023-09-11T09:08:00-04:00
    title: Request Acknowledged
    body: >-
      On September 11, 2023, FMCS sent an email acknowledging this request and assigning it tracking number FOIA-2023-00045.

---

*Note: This request is a collaboration with [Forest Gregg](https://mastodon.social/@fgregg), who maintains a [free, open-source database of data relevant to the labor movement](https://labordata.bunkum.us/).*

The [Federal Mediation and Conciliation Service](https://www.fmcs.gov/) (FMCS) is an independent federal agency that helps to mediate labor-management disputes. As part of those efforts, it requires employers entering collective bargaining negotiations to submit an “[F-7 notice](https://www.fmcs.gov/resources/forms-applications/notice-of-bargaining-f-7/),” providing information about the upcoming bargaining.

Although FMCS publishes [spreadsheets containing some data from those submissions](https://www.fmcs.gov/resources/documents-and-data/#tab-d3d7f5344cef9bab4d3), its internal database includes helpful additional details (such as the database’s unique identifiers associated with each employer and union), as evidenced by the [schema provided](https://www.data-liberation-project.org/documents/fmcs-case-management-system-schema/) to the Data Liberation Project in response to [FOIA-2023-00009](https://www.data-liberation-project.org/requests/fmcs-work-stoppages/).

[Our FOIA request 📄](https://www.documentcloud.org/documents/23927252-2023-08-25-fmcs-f-7-data-tables-foia-request-greggsinger-vine) to FMCS seeks those full details. Specifically, it seeks all entries in the FMCS case management database's `pt_fmcscase` table, with the exception of  FOIA-exempt columns, where the case originates with a FMCS F-7 notice as indicated in the `pt_f7noticesubmissionformat` or `pt_f7noticesubmissionformatname` columns (or better means as determined by FMCS staff), plus related database-lookup tables.
