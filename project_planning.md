# Project planning

In a project people, teams and organizations generate value through
adaptive solutions for complex problems.[^1]

#### Project Infrastructure

| Tool | Example |
|----|----|
| Code repository | Github |
| Issue / Project tracking | Jira |
| Knowledge Base / Document Center | Confluence |w
| Docker registry[^1] | Docker Hub / Harbor / AWS Contanier Registry |


## Project lifecycle

* Re-read [Atlassian Agile/Scrum Guide](https://www.atlassian.com/agile/scrum)
* **New atlassian space**
* **Jira-project setup**
  * Choose the simplest (company managed) project
  * Choose a project acronym / codename for all project related IDs
  * Invite all relevant users to space
  * ⚠️ the workflow should have (backlog, in progress, **stuck**, done)
* **Confluence-workspace setup**
  * Choose simplest workspace, name: _<jira-name>_-workspace.
  * Add welcome page with information and links:
    * Confluence (main documentation page, rules for making new pages, good practice etc.)
    * Jira-project (epics overview, template issues etc.)
* Make roadmap (Project Plan) with next phases:
  * Planning
  * Ideation / Design
  * Development
  * Documentation
  * Deployment
  * Launch
  * Maintenance
* Invite all relevant users

## Project Plan

The project plan should answer the following questions:

* Which functionality is necessary to solve problem?
* Which tasks need to be formed to develop described functionality?
* What is the order of feature development?
* Who is involved in the project?
* How is responsibility divided among the team members?
* What are the expected dependencies in the product?
* What quality metrics will define?
* The efficiency of the project?
* The quality of the product?

### Project Planning Resources
* [non-linear roadmaps](https://productcrunch.substack.com/p/escaping-the-roadmap-trap)


[^1]: "_Scrum is a lightweight framework that helps people, teams and organizations generate value through
  adaptive solutions for complex problems_" [Scrum](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf)
