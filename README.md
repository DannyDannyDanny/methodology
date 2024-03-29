## [DannyDannyDanny/Methodology](https://github.com/DannyDannyDanny/methodology/)

This guide focuses on designing, developing ~~and delivering~~ Data-Processing Sytems, written primarily in python, deploying to Linux servers, optionally communicating with external interfaces (APIs or DBs). The repo is actively being updated; _bookmark_ :bookmark: it, leave a _Star_ :star: or _Watch_ :eye: the repo.

* [repo roadmap](#roadmap)
  * 🔴🟡🟢 [example process roadmap](example_progress_roadmap.md)
* [gitmoji](#gitmoji-reference)
* [planning](project_planning_contracting.md)
* ideation / design (coming soon)
  * [design process](https://uxtools.co/blog/what-no-one-explains-about-the-design-process/)
* [development](methodology-development.md)
* [documentation](documentation.md)
* Deployment (coming soon)
* Launch (coming soon)
* Maintenance (coming soon)
* [cloud engineering](cloud-engineering.md)
* [data management](data_storage.md)
* [tools](tools.md) :construction:
* [philosophy](philosophy.md)
* [scripts](scripts/)
  * [emoji_shortlist](scripts/emoji_shortlist.py)

## roadmap

* [ ] 2022Q3: Consultancy & Delivery Methodology
  * [ ] [Planning](project_planning_contracting.md)
  * [ ] taiga.ai learning lessons ~~Contract clauses, Project phases, Deliverables~~
* [ ] 2023Q1: Data Management Methodology

## `git`moji reference

Use the format `:gitmoji: <commit message>` in your commit messages.
Or follow [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).
Only proper nouns, CamelCase and class names should have uppercases letters.
Use several gitmojis if it makes sense.


| emoji         | code            | description                                            |
|---------------|-----------------|--------------------------------------------------------|
| :sparkles:    | `:sparkles:`    | add new feature / function                             |
| :art:         | `:art:`         | refactor / type hinting / restructuring / linting      |
| :goal_net:    | `:goal_net:`    | try/raise/handle errors or warnings                    |
| :zap:         | `:zap:`         | improve performance / coverage / profiling             |
| :bug:         | `:bug:`         | bug fixing                                             |
| :truck:       | `:truck:`       | moving / renaming                                      |
| :recycle:     | `:recycle:`     | CI/CD, pre-commit hooks, auto-tests and environments   |
| :boom:        | `:boom:`        | work in progress / breaking changes                    |
| :memo:        | `:memo:`        | doc / logging / verbosity / code comments              |
| :fire:        | `:fire:`        | remove (dead) code / file                              |
| :alien:       | `:alien:`       | changes related to APIs, Databases, Network etc.       |
| :key:         | `:key:`         | security, user access, roles                           |
| :tada:        | `:tada:`        | clean / transform / validate _data_                    |
| :eyes:        | `:eyes:`        | UI / UX / CLI / visualizations (previously :lipstick:) |
| :brain:       | `:brain:`       | statistical modelling, training and prediction         |
| :pushpin:     | `:pushpin:`     | dependency and environment versioning                  |
| :whale:       | `:whale:`       | docker, VMs, containerization and architecture changes |
| :see_no_evil: | `:see_no_evil:` | changes to `.*ignore` or local files                   |
| :mag:         | `:mag:`         | PR-review change-requests                              |

Missing a gitmoji? Take a look at [word emojis with short shortcodes](emojis.md)
made by this script [this script](scripts/emoji_shortlist.py)
Submit an [issue](https://github.com/DannyDannyDanny/methodology/issues)
(or [Pull Request](https://github.com/DannyDannyDanny/methodology/pulls)).

## `git` version control
* repo naming conventions
  * lowercase
  * dashes not underscores
  * name pattern: `<prefix>_<suffix>`
    * `<prefix>` i.e. drug, condition, indication, area (reserach, clinical)
    * `<suffix>` i.e. project name, tool, exploration name
* init repo with README
  * must have sections: purpose, usage and stakeholders sections
  * good to have: install, contributing
* git rules for simple development
  * no branching
  * no rebasing
  * no public repos
  * no data in repo
