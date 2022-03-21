## [DannyDannyDanny/Methodology](https://github.com/DannyDannyDanny/methodology/)

This guide focuses on designing, developing and delivering Data-Processing Sytems, written primarily in python, deploying to Linux servers, optionally communicating with external interfaces (APIs or DBs). The repo is actively being updated; _bookmark_ :bookmark: it, leave a _Star_ :star: or _Watch_ :eye: the repo.

* [Repo Roadmap](#repo-roadmap)
* [Gitmoji Reference](#gitmoji-reference)
* [Planning](project_planning.md)
* Ideation / Design (coming soon)
  * [Design Process](https://uxtools.co/blog/what-no-one-explains-about-the-design-process/)
* [Development](methodology-development.md)
* [Documentation](documentation.md)
* Deployment (coming soon)
* Launch (coming soon)
* Maintenance (coming soon)
* [Data Storage](data_storage.md)
* [Danny's vim cheat sheet](vim.md)
* [Tools](tools.md) (🚧 under construction 🚧)

## Repo Roadmap

* [x] ~2021Q3: Decide on sections~
* [x] ~2021Q4: Split files (Development, Delivery)~
* [ ] 2022Q1: Run linux on dev machine ([issue #5](https://github.com/DannyDannyDanny/methodology/issues/5))
  * [ ] Merge [this gist](https://gist.github.com/DannyDannyDanny/6990a552029e1f31ce1f4b18ccb078fa) into this repo
* [ ] 2022Q2: Move dotfiles to own repo (and install script)
* [ ] 2022Q3: Consultancy Methodology
* [ ] 2022Q4: Delivery Methodology + [git commit template](https://gist.github.com/lisawolderiksen/a7b99d94c92c6671181611be1641c733#file-git-commit-template-md)
* [ ] 2023Q1: Consultancy Methodology

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
|:recycle:|`:recycle:`| work related to CI/CD, pre-commit hooks, automated tests and environments |
|:boom:|`:boom:`| work in progress / breaking changes |
|:memo:|`:memo:`| doc / logging / verbosity / code comments |
|:fire: |`:fire:`| remove (dead) code / file |
|:alien:|`:alien:`| changes related to APIs, Databases, Network etc. |
|:tada:|`:tada:`| clean / transform / validate _data_ |
|:eyes:|`:eyes:`| improve UI / UX, CLI or visualizations (previously :lipstick:) |
|:brain:|`:brain:`| statistical modelling, training and prediction |
|:pushpin:|`:pushpin:`| dependency and environment versioning |
|:whale: |`:whale:`| virtualization, containerization and architecture changes |
|:see_no_evil:|`:see_no_evil:`| changes to `.*ignore` or local files |
|:mag: |`:mag:`| PR-review change-requests |

Missing a gitmoji? Get [inspiration](https://gist.github.com/rxaviers/7360908).
Submit an [issue](https://github.com/DannyDannyDanny/gitmoji/issues) (or [Pull Request](https://github.com/DannyDannyDanny/gitmoji/pulls)).
