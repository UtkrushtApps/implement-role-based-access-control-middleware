# Task Overview
You are maintaining a FastAPI-based analytics service providing tenant-isolated reports through an endpoint. Users occasionally encounter incorrect 403 Forbidden errors or blank results due to case-sensitive handling of a custom tenant ID header. You must ensure authorization logic is robust to any capitalization of the header and provide reliable multi-tenant report access. The solution must work in a Dockerized deployment environment.

# Guidance
- Focus on robust, case-insensitive extraction of tenant identifiers from incoming HTTP headers.
- Ensure the authorization logic correctly enforces tenant isolation regardless of header capitalization.
- The system must handle only valid requests and return the appropriate status for missing or invalid tenant identifiers.
- All changes must be compatible and function as expected in a Dockerized (containerized) environment.

# Objectives
- Identify and correct the bug affecting case-insensitive custom header extraction for tenant identification.
- Guarantee that the /reports/summary endpoint reliably returns the right data for valid users, irrespective of header capitalization.
- Maintain strict tenant isolation and return 403 errors only for actual authorization issues.
- Ensure the FastAPI service works as intended when deployed within a Docker container.

# How to Verify
- Run the application in the provided Docker environment.
- Send requests to the analytics endpoint using both the original and alternative capitalization of the custom tenant header.
- Confirm a valid user gets the correct tenant's summary in both cases and only receives 403 if the header is absent or invalid.
