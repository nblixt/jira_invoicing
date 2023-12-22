# README

This is a demo project that will mock API requests to Jira's Tempo Time Tracking plugin to pull worklogs for invoicing
projects in Jira.

[API for worklogs](https://apidocs.tempo.io/#tag/Worklogs/operation/getWorklogs)

## Jira API
- [Documentation recommends using ad-hoc API calls](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/#ad-hoc-api-calls)
- [Basic auth](https://developer.atlassian.com/cloud/jira/platform/basic-auth-for-rest-apis/)

### Endpoints of Interest
- [Get all users](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-users/#api-rest-api-3-users-search-get)
- [Get projects paginated](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-projects/#api-rest-api-3-project-search-get)

## Jira Tempo API
- [Base Path for API Access](https://apidocs.tempo.io/#section/Base-Paths-for-API-Access)
- [Authentication](https://apidocs.tempo.io/#section/Authentication)
- [Errors](https://apidocs.tempo.io/#section/Errors)

### Endpoints of Interest
- [Get worklogs by projectId or issueId](https://apidocs.tempo.io/#tag/Worklogs/operation/getWorklogs)
