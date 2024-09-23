---
title: EEOC Integrated Mission System Documentation
agency: Equal Employment Opportunity Commission (EEOC)
date: 2022-11-29T00:00:00-05:00
status: Records in rolling production
request_id: 820-2023-002324
last_updated: 2023-10-31
summary: We're requesting documentation of the main database that the Equal Employment Opportunity Commission uses to track discrimination complaints and investigations.
request_letter: https://www.documentcloud.org/documents/23329270-2022-11-29-eeoc-ims-documentation-foia-request-singer-vine
updates:
- date: 2022-12-12T16:55:00-05:00
  title: Request Acknowledged, Placed on "Complex Track"
  body: >-
    On December 12, 2022, the EEOC provided an [acknowledgment letter 📄](https://www.documentcloud.org/documents/23451151-2022-12-12-20221212-ackltr-820-2023-002324) regarding this request, which has been assigned to the "complex" processing track.
- date: 2023-02-03T09:42:00-05:00
  title: Responsive Records Under FOIA Review
  body: >-
    On February 3, 2023, an EEOC attorney emailed the Data Liberation Project with an update: "The documents have been provided to the FOIA office and we have begun our review. Due to the number of pages provided, and the busy schedule in the department, we will likely need a couple of months to process the documents and have them ready to provide to you." The Data Liberation Project has responded to request that the records be provided on a rolling basis.
- date: 2023-02-23T11:35:00-05:00
  title: First Set of Records Provided
  body: >-
    On February 23, 2023, the EEOC provided the "[first interim production](https://www.documentcloud.org/documents/23689387-2023-02-23-20230223_firstinterimlod-820-2023-002324)" of records responsive to this request. It consists of [one PDF](https://www.documentcloud.org/documents/23689388-2023-02-23-820-2023-002324-interim-1-responsive-documents), which appears to be an entity relationship diagram listing database tables, column names, and the relationships between them.
- date: 2023-06-04T18:34:00-04:00
  title: Estimated Date of Completion Provided
  body: >-
    On June 4, 2023, in response to an inquiry by the Data Liberation Project, the EEOC provided an estimated completion date of August 31, 2023, and noted that "Draft redactions have been prepared by our office and those redactions are under review by OIT and OFP at this time."
- date: 2023-10-31T19:51:00-04:00
  title: Second Set of Records Provided
  body: >-
    On October 31, 2023, the EEOC provided a "[second interim production](https://www.documentcloud.org/documents/24116559-2023-10-31-20231030_interim2lod-820-2023-002324)" of records responsive to this request. It consists of [one 650-page PDF](https://www.documentcloud.org/documents/24116560-2023-10-31-820-2023-002324-interim-2-responsive-documents) that appears be an Oracle database schema for EEOC's IMS database; it lists the names, columns, and column constraints of 600+ tables. Based on the table names referenced, it seems to describe a different database system than the records provided in the first interim production.

---

The Equal Employment Opportunity Commission uses its [Integrated Mission System](https://www.eeoc.gov/privacy-act/integrated-mission-system-ims-privacy-impact-assessment) (`IMS`) to track employment discrimination complaints and investigations. As a 2020 report commissioned by the EEOC Office of Inspector General explains:

> IMS is the key database used to track, assign and document key actions taken during a case’s full lifecycle. Accordingly, IMS maintains information on federal complaint hearings records. Information stored includes the complainant’s name, address and demographics; the agency’s name and address; and particular details of the complaint (such as number of days in certain stages, if IMS action code is available); and activities related to the complaint, such as the number of days at each stage of the appeals process as confirmed by Appeals Action codes.

The agency's [Privacy Impact Assessment for `IMS`](https://www.eeoc.gov/privacy-act/integrated-mission-system-ims-privacy-impact-assessment) generally describes the system's various components and types of data collected, but lacks specific information about how the data are recorded, the structure of the database, and many other essential details.

[Our FOIA request 📄](https://www.documentcloud.org/documents/23329270-2022-11-29-eeoc-ims-documentation-foia-request-singer-vine) seeks all records that *document* `IMS`, such as database diagrams and user guides, for the purpose of better understanding the system and also to aid in the construction of efficient FOIA requests for particular slices of non-exempt database material in the future.
