# README
[![Rails Version](https://img.shields.io/badge/Rails_version-7.0.8-blue.svg)](https://github.umn.edu/hst/clinical_research_invoicing)
[![Ruby Version](https://img.shields.io/badge/Ruby_version-3.1.2-blue.svg)](https://github.umn.edu/hst/clinical_research_invoicing)
[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop-rails)
[![Rails Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rails.rubystyle.guide)

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

## Tests
Run RSpec tests with `bundle exec rspec spec/path_to_files`

## Linting
Run Rubocop with safe auto-correct using `rubocop -a`.

Run Rubocop with unsafe auto-correct using `rubocop -A`.
