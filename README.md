## [DannyDannyDanny/Methodology](https://github.com/DannyDannyDanny/methodology/)

<a href="https://gitmoji.carloscuesta.me">
  <img src="https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=flat-square" alt="Gitmoji">
</a>

## Repo Roadmap
* [x] 2021Q1: ~Gitmoji -> (general) Methodology~ :white_check_mark:
* 2021Q2: Development Methodology
  * [x] Oneliner build / install / run / deploy
  * [ ] Git (Branching, Merging and Pull Requests)
  * [ ] [OpenStack](https://docs.openstack.org/hacking/latest/user/hacking.html#styleguide): Linting and Pre-commit Hooks
* 2021Q3: Decide on sections
* [ ] Resolve [Joel's 12 Questions](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
* 2021Q4
  * [ ] Add collaborators

This methodology repo is focused on Python Data Processing based projects with som external dependencies (APIs or DBs).
In your commit message use the format `:gitmoji: <commit message>`. Only propper nouns, CamelCase and class names should have uppercases letters. Avoid using multiple gitmojis.

## `gitmoji` Lookup

|emoji|code|description|
|---|---|---|
|:sparkles:|`:sparkles:`| add new feature / function |
|:art:|`:art:`| refactor code / improve readibility / structure and lint flake8 |
|:goal_net:|`:goal_net:`| try/raise/handle errors or warnings|
|:zap:|`:zap:`| improve performance / coverage / profiling |
|:bug:|`:bug:`| fix this bug |
|:truck:|`:truck:`| moving / renaming |
|:recycle:|`:recycle:`| writing automated tests and hooks |
|:construction: / :boom:|`:construction:`/`:boom:`| work in progress / breaking changes |
|:memo:|`:memo:`| doc / logging / verbosity / code comments |
|:fire: / :coffin:|`:fire:`/`:coffin:`| remove (dead) code / file |
|:alien:|`:alien:`| changes related to APIs and Databases |
|:bar_chart:|`:bar_chart:`| clean / transform / validate _data_|
|:lipstick:|`:lipstick:`| improve UI / UX, CLI or visualizations|
|:pushpin:|`:pushpin:`| dependency and environment versioning |
|:see_no_evil:|`:see_no_evil:`| changes to .gitignore and exclusively local files |
|:mag: |`:mag:`| changes in connection with PR-review change-requests |

Missing a gitmoji? Get [inspiration](https://gist.github.com/rxaviers/7360908).
Submit an [issue](https://github.com/DannyDannyDanny/gitmoji/issues) (or [Pull Request](https://github.com/DannyDannyDanny/gitmoji/pulls)).

## Oneliner install and run
The readme must contain a one-liner code that 
```bash
git clone https://github.com/user/repo.git cool-user-repo-oneline && cd cool-user-repo-oneline
pipenv install
pipenv run python .
#cd .. && rm -rf cool-user-repo-online
```

## Git Branching
> Coming soon! 🚧

## Repo Badges
> Coming soon! 🚧

![Coverage badge][coverage-badge]
[coverage-badge]: https://img.shields.io/badge/Coverage-100%25-brightgreen.svg

## Other methdology
* [Things you should do now](https://secure.phabricator.com/book/phabflavor/article/things_you_should_do_now/)
* Follow [naming conventions](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)
* Follow [software engineering laws](https://www.netmeister.org/blog/software-engineering-laws.html)
* Use [scrum methodology](https://www.scruminc.com/scrum-glossary/)
* Do [CodeReviews](https://softwareengineering.stackexchange.com/questions/141005/how-would-you-know-if-youve-written-readable-and-easily-maintainable-code/141010#141010)
* Use databases
  * Consider SQL (but [don't use `select *`](https://tanelpoder.com/posts/reasons-why-select-star-is-bad-for-sql-performance/))
  * Be aware of [feature casualties of large databases](https://web.dev/streams/)
* Avoid [dark patterns](https://darkpatterns.org/types-of-dark-pattern.html)
* Security
  * Audit [security](https://hangar.tech/posts/our-dsq/)
  * Understand [SSH tunnels](https://robotmoon.com/ssh-tunnels/)
* Use [non-linear roadmaps](https://productcrunch.substack.com/p/escaping-the-roadmap-trap)
* Use solarized-theme
  * [git bash solarized :sun_with_face:](https://github.com/speedpacer/gitbash_solarized/issues)
