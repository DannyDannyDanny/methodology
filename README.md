## [DannyDannyDanny/Methodology](https://github.com/DannyDannyDanny/methodology/)


This guide focuses on designing, developing and delivering Data-Processing Sytems, written primarily in python, deploying to Linux servers, optionally communicating with external interfaces (APIs or DBs). The repo is actively being updated; _bookmark_ :bookmark: it, leave a _Star_ :star: or _Watch_ :eye: the repo.

* [Repo Roadmap](#repo-roadmap)
* [Gitmoji Reference](#gitmoji-reference)
* [Setup](#setup) ([Version Control](#setup-version-control), [Environments](#setup-server-management), Documentation)
* [Develop](#develop) ([Version Control](#develop-with-version-control), Server Management, Documentation)
* Deploy
* Deliver?

<a href="https://gitmoji.carloscuesta.me">
  <img src="https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=flat-square" alt="Gitmoji">
</a>

## Repo Roadmap

* [x] 2021Q3: Decide on sections:
  * Sections by Project Phase (setup, develop, deploy, deliver)
  * Each section should covers fixed topics (version control, systems management, docuementation)
  * Information that doesn't fit here goes to _Topic Hierarchy_ into phases
* [ ] 2021Q4
  * [ ] Each section has at least one bullet point
  * [ ] Add [Custom utils](https://dev.to/kenbellows/a-few-python-repl-config-tricks-3o6i).
* [ ] 2022Q1 Delivery Methodology
* [ ] 2022Q2 Consultancy Methodology


## Gitmoji reference

Use the format `:gitmoji: <commit message>` in your commit messages. Only proper nouns, CamelCase and class names should have uppercases letters. ~~Avoid using multiple gitmojis.~~ Use several gitmojis if it makes sense.

|emoji|code|description|
|---|---|---|
|:sparkles:|`:sparkles:`| add new feature / function |
|:art:|`:art:`| refactor code / add type hinting / improve readibility / structure and lint flake8 |
|:goal_net:|`:goal_net:`| try/raise/handle errors or warnings |
|:zap:|`:zap:`| improve performance / coverage / profiling |
|:bug:|`:bug:`| bug fixing |
|:truck:|`:truck:`| moving / renaming |
|:recycle:|`:recycle:`| work related to CI/CD, webhooks, automated tests |
|:boom:|`:boom:`| work in progress / breaking changes |
|:memo:|`:memo:`| doc / logging / verbosity / code comments |
|:fire: |`:fire:`| remove (dead) code / file |
|:alien:|`:alien:`| changes related to APIs, Databases, Network etc. |
|:tada:|`:tada:`| clean / transform / validate _data_ |
|:lipstick:|`:lipstick:`| improve UI / UX, CLI or visualizations |
|:brain:|`:brain:`| statistical modelling, training and prediction |
|:pushpin:|`:pushpin:`| dependency and environment versioning |
|:see_no_evil:|`:see_no_evil:`| changes to `.*ignore` or local files |
|:mag: |`:mag:`| changes in connection with PR-review change-requests |

Missing a gitmoji? Get [inspiration](https://gist.github.com/rxaviers/7360908).
Submit an [issue](https://github.com/DannyDannyDanny/gitmoji/issues) (or [Pull Request](https://github.com/DannyDannyDanny/gitmoji/pulls)).
