## [DannyDannyDanny/Methodology](https://github.com/DannyDannyDanny/methodology/)

<a href="https://gitmoji.carloscuesta.me">
  <img src="https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=flat-square" alt="Gitmoji">
</a>

## Repo Roadmap
* [x] 2021Q1: ~Gitmoji -> (general) Methodology~ :white_check_mark:
* [x] 2021Q2: Version control methodology
  * [x] Oneliner build / install / run / deploy
  * [x] Git (Branching, Merging and Pull Requests)
  * [x] Default environment section
* [ ] 2021Q3: Decide on sections
  * [ ] Organize [other methodology](#other-methdology) into hierarchy
  * [ ] Split hierarchy into paragraphs / sections
* 2021Q4
  * [ ] Add sub-pages
  * [ ] Add [Custom utils](https://dev.to/kenbellows/a-few-python-repl-config-tricks-3o6i).


This methodology repo is focused on Python Data Processing based projects with som external dependencies (APIs or DBs). The repo is actively being updated; Leave a start bookmark it or _Watch_ the repo to get notificatied of updates.

# Version control

## Commit messages and `gitmoji`

Use the format `:gitmoji: <commit message>` in your commit messages. Only proper nouns, CamelCase and class names should have uppercases letters. Avoid using multiple gitmojis.

|emoji|code|description|
|---|---|---|
|:sparkles:|`:sparkles:`| add new feature / function |
|:art:|`:art:`| refactor code / improve readibility / structure and lint flake8 |
|:goal_net:|`:goal_net:`| try/raise/handle errors or warnings|
|:zap:|`:zap:`| improve performance / coverage / profiling |
|:bug:|`:bug:`| fix this bug |
|:truck:|`:truck:`| moving / renaming |
|:recycle:|`:recycle:`| work related to CI/CD, webhooks, automated tests |
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
When using git repositories, connect with [ssh](https://stackoverflow.com/a/65415202/5684214).

The README for your project should contain a one-liner code that dowloads, installs and runs a mini-test.
```bash
git clone https://github.com/user/repo.git cool-repo && cd cool-repo
pipenv install
pipenv run python .
#cd .. && rm -rf cool-user-repo-online
```

## Git Flows

> In progress! 🚧 Use [git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)!

```sh
git log --all --decorate --oneline --graph
# Git Log A DOG acronym
```

#### New Development Flow
```
# clone repo with local_name enables several clones
git clone <repo> <local_name>

# optional: checkout (i.e switch to) a branch to continue developing from there
git checkout <feature/featurename>

# optional if you switched branch on the last step
# switched branch: branch out from 
git checkout <feature/newfeature>
git branch <feature/newfeature>
git push --set-upstream origin <feature/newfeature>
```

#### Comparing / Merging two branches
```
git merge --no-commit --no-ff <feature/otherfeaturebranch>
```

#### Submitting multiple PRs
* [Interactive rebase](https://stackoverflow.com/questions/35790561/working-while-waiting-for-pending-pr#comment96514430_35793095)
* [Rebase & Update PR](https://www.digitalocean.com/community/tutorials/how-to-rebase-and-update-a-pull-request)

Context:
1. submit PR for _feature1_
2. from _feature1_ branch make new branch _feature2_
3. commit and push _feature2_ changes
4. submit PR
5. Both PRs approved

```
# there should be one or more flows that account for cases where:
# -> feature1 gets change requests
# -> feature1 is rejected and made obsolete
```

## Repo Badges
> Coming soon! 🚧

![Coverage badge][coverage-badge]

[coverage-badge]: https://img.shields.io/badge/Coverage-100%25-brightgreen.svg

## Documentation
* Use markdown with [Google Style Guide](https://google.github.io/styleguide/docguide/style.html) for written documentation.
* Conceptual graphical documentation as inline embedded images.
* Save Matplotlib / Seaborn plots as `.svg`.
* Sketches and handwritten illustrations scanned / photographed as `.png`/`.jpg`.
* Scanned / photographed illustrations should be cropped, contrast and alligned.

|Cons of tables |Pros of tables|
|--|--|
| Great splitting information | Painful to format in MD|

## Python
Python is notoriously painful to manage. Use [pipx](https://pypi.org/project/pipx/) or [pyenv](https://mitelman.engineering/blog/python-best-practice/automating-python-best-practices-for-a-new-project/).

## Deploying to Servers
When deploying to FreeBSD and Linux servers, place the code in the `/home` directory.


## Other methdology
* Closed Source Software: If you cannot check what it does / how it works, do not use it for the sake of security.
* [Things you should do now](https://secure.phabricator.com/book/phabflavor/article/things_you_should_do_now/)
* Follow [naming conventions](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)
* Follow [software engineering laws](https://www.netmeister.org/blog/software-engineering-laws.html)
* Use [scrum methodology](https://www.scruminc.com/scrum-glossary/)
* [Anticipatory Failure Determination](https://historyofyesterday.com/suppose-i-wanted-to-kill-a-lot-of-pilots-f126bbc756fa)
* [Understand, Ideate and Test, Implement](https://uxtools.co/challenges/) UX.
* Do [CodeReviews](https://softwareengineering.stackexchange.com/questions/141005/how-would-you-know-if-youve-written-readable-and-easily-maintainable-code/141010#141010)
* Use databases
  * Consider SQL (but [don't use `select *`](https://tanelpoder.com/posts/reasons-why-select-star-is-bad-for-sql-performance/))
  * Be aware of [feature casualties of large databases](https://web.dev/streams/)
* [Data Science - Hierarchy of Needs](https://hackernoon.com/the-ai-hierarchy-of-needs-18f111fcc007)
* Avoid [dark patterns](https://darkpatterns.org/types-of-dark-pattern.html)
* Security
  * Audit [security](https://hangar.tech/posts/our-dsq/)
  * Understand [SSH tunnels](https://robotmoon.com/ssh-tunnels/)
* Use [non-linear roadmaps](https://productcrunch.substack.com/p/escaping-the-roadmap-trap)
* Programming Personalizations
  * [git bash solarized :sun_with_face:](https://github.com/speedpacer/gitbash_solarized/issues)
* Test and Production environments must be the same and very well defined: FreeBSD image or Ubunut Docker container
* [Music for programming](https://www.musicforprogramming.net)
* Resolve [Joel's 12 Questions](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
* Visualization problem: it's difficult to include visualization in this workflow but essential to fast prototyping.
  * Perhaps [text-to-diagram](https://xosh.org/text-to-diagram/)
  * [AsciiFlow](https://asciiflow.com/#/)
* There's some gold nuggets this [reddit post](https://old.reddit.com/r/ExperiencedDevs/comments/nmodyl/drunk_post_things_ive_learned_as_a_sr_engineer/)
* [the-importance-of-humility-in-software-development](https://humbletoolsmith.com/2020/08/10/the-importance-of-humility-in-software-development/)
* [OpenStack](https://docs.openstack.org/hacking/latest/user/hacking.html#styleguide): Linting and Pre-commit Hooks
* Details about [pair programming](https://martinfowler.com/articles/on-pair-programming.html)
* Is [extreme programming](http://www.extremeprogramming.org/) a thing?
* Collaboration (tools: [csvbox](https://csvbox.io/), [pyodide](https://github.com/pyodide/pyodide))
* Virtualize Everything! [Awesome-Compose](https://github.com/docker/awesome-compose).
* [open source cousin to GPL3](https://github.com/kingoflolz/mesh-transformer-jax)
* [Divide year into 26 fortnights labelled A-Z](https://futureofcoding.org/episodes/044#19)

# Project Portfolio
* Consumption Predictor
