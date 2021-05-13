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
  * [ ] Visualization problem: it's difficult to include visualization in this workflow but essential to fast prototyping. Perhaps [text-to-diagram](https://xosh.org/text-to-diagram/)
  * [ ] Details about [pair programming](https://martinfowler.com/articles/on-pair-programming.html)
  * [ ] Is [extreme programming](http://www.extremeprogramming.org/) a thing?
* 2021Q4
  * [ ] Add sub-pages
  * [ ] Add [Custom utils](https://dev.to/kenbellows/a-few-python-repl-config-tricks-3o6i).

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
The readme must contain a one-liner code that 
```bash
git clone https://github.com/user/repo.git cool-repo && cd cool-repo
pipenv install
pipenv run python .
#cd .. && rm -rf cool-user-repo-online
```

## Git Flows
> In progress! 🚧

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



## Other methdology
* Closed Source Software: If you cannot check what it does / how it works, do not use it for the sake of security.
* [Things you should do now](https://secure.phabricator.com/book/phabflavor/article/things_you_should_do_now/)
* Follow [naming conventions](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)
* Follow [software engineering laws](https://www.netmeister.org/blog/software-engineering-laws.html)
* Use [scrum methodology](https://www.scruminc.com/scrum-glossary/)
* [Understand, Ideate and Test, Implement](https://uxtools.co/challenges/) UX.
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
* Test and Production environments must be the same and very well defined: FreeBSD image or Ubunut Docker container
