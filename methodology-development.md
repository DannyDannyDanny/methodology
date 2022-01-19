### Document Roadmap
  * [ ] Sections by Project Phase (setup, develop, deploy, deliver)
  * [ ] Each section has heading, [sections-link](#sections) and at least one bullet point
  * [ ] Each section should covers fixed topics (version control, systems management, docuementation)
  * [ ] Information that doesn't fit into phases goes to [_Topic Hierarchy_](#topic-hierarchy)
  * [ ] Add [Custom utils](https://dev.to/kenbellows/a-few-python-repl-config-tricks-3o6i).

### Sections
* [Setup](#setup) ([Version Control](#setup-version-control), [Environments](#setup-server-management), Documentation)
* [Develop](#develop) ([Version Control](#develop-with-version-control), Server Management, Documentation)
* Deploy
* Deliver?

## Develop
* **[Setup Dev Machine](setup-dev-machine.md)**
* **Setup Environments**
  * You should be able to run the code and develop without a dedicated server. Get virtualized with [docker-compose](https://docs.docker.com/compose/compose-file/compose-file-v3/).
  * Deploy using Docker + Docker-Compose. Docker keeps all your application events separate from OS events.
    * Add to `.bashrc` on remote server (remove or replace `ENV.`): 
    * `alias doco="docker-compose -f docker-compose.ENV.yml"; cd /opt/project/`

* **Setup Version Control**
  * Connect to your repos using [ssh](https://stackoverflow.com/a/65415202/5684214).
  * Setup git credentials
    * `git config --local user.email (initialis)@(client comain)` 
  * Install and use [pre-commit hooks](https://pre-commit.com/) on your dev machine
  * Setup [Travis-CI build testing](https://docs.travis-ci.com/user/customizing-the-build/#building-specific-branches)
  * Add an [`.EditorConfig` file](https://editorconfig.org/)
* **Documentation**
  * Your repo should have a one-liner for isntallation andd running: (docker-compose.yml + `doco up`)

### Python Developement

* Python Standard Library:
  * [argparse](https://docs.python.org/3/library/argparse.html) to build CLI programs
  * [pathlib](https://docs.python.org/3/library/pathlib.html) for file-IO
* External Modules:
  * [Invoke](https://www.pyinvoke.org/) & [Fabric](https://www.fabfile.org/) for remote deployment
* Writing good python code:
  * Avoid [code smells](https://refactoring.guru/refactoring/smells)
  * [pipx](https://pypi.org/project/pipx/) or [pyenv](https://mitelman.engineering/blog/python-best-practice/automating-python-best-practices-for-a-new-project/) for environment management. If the machine has python3.x installed, use [venv](https://docs.python.org/3/library/venv.html) from the standard library.
  * [Loguru](https://github.com/Delgan/loguru) for logging

### Develop with Version Control

```sh
# Git Log A DOG acronym
git log --all --decorate --oneline --graph

# when you have uncommitted changes
git add --patch <pattern>

# check what you've staged
git diff --cached

# NEW DEVELOPMENT FLOW
# clone repo with local_name enables several clones
git clone <repo> <local_name>

# optional: checkout (i.e switch to) a branch to continue developing from there
git checkout <feature/featurename>

# optional if you switched branch on the last step
# switched branch: branch out from 
git checkout <feature/newfeature>
git branch <feature/newfeature>
git push --set-upstream origin <feature/newfeature>

# delete branch locally (-d: normal, -D: force)
git branch -D <branch_name_1> <branch_name_2> <branch_name_1>
# delete remote
git push origin -d <branch_name>

# Comparing / Merging two branches
git merge --no-commit --no-ff <feature/otherfeaturebranch>

# get file from another branch
git checkout <otherbranch> -- path/to/dir

# delete branches not present on remote
git remote prune origin

# see all commits that affected somefile
git log --follow -- filename

# search code in all history
git log -S "some_old_varname" --oneline --all
```

### Submitting multiple PRs
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

#### Project Infrastructure

|Project Infrastructure | Example |
|----|----|
| Issue / Project tracking | Jira |
| Code repository | Github / RedMine |
| Knowledge Base / Document Center | Confluence / RedMine |
| Docker registry[^1] | Docker Hub / Harbor / AWS Contanier Registry |


#### Topic Hierarchy
* **Documentation**
  * Use [Google's Markdown Style Guide](https://google.github.io/styleguide/docguide/style.html) for written documentation.
  * Conceptual graphical documentation as inline embedded images.
  * Save Matplotlib / Seaborn plots as `.svg`.
  * Sketches and handwritten illustrations scanned / photographed as `.png`/`.jpg`.
  * Scanned / photographed illustrations should be cropped, contrast and alligned.
* **DevOps**
  * Do [CodeReviews](https://softwareengineering.stackexchange.com/questions/141005/how-would-you-know-if-youve-written-readable-and-easily-maintainable-code/141010#141010)
  * Use [scrum methodology](https://www.scruminc.com/scrum-glossary/)
  * Test and Production environments must be the same and very well defined: FreeBSD image or Ubunut Docker container
  * **Logs**:
    * Application logs `docker-compose logs`
    * Linux-based OS logs: `/var/log/messages`
    * ssh logs `/var/log/audit/audit.log`
* **UX/UI**
  * [Understand, Ideate and Test, Implement](https://uxtools.co/challenges/) UX.
  * Avoid [dark patterns](https://darkpatterns.org/types-of-dark-pattern.html)
* **Visualization**
  * problem: it's difficult to include visualization in this workflow but essential to fast prototyping.
  * Perhaps [text-to-diagram](https://xosh.org/text-to-diagram/)
  * [AsciiFlow](https://asciiflow.com/#/)
  * *Spectral*, a [diverging colormap from matplotlib](https://matplotlib.org/3.1.0/tutorials/colors/colormaps.html#diverging).
  * [Tikz Editor](https://tikzcd.yichuanshen.de)
  * Matplotlib
    * [book of examples](https://raw.githubusercontent.com/rougier/scientific-visualization-book/master/pdf/book.pdf)
    * [cheatsheets](https://matplotlib.org/cheatsheets/)
* **API**
  * JSON API is the easiet API - [follow the rules](https://jsonapi.org/format/#)
  * Requesting - use Python-[requests](https://docs.python-requests.org/en/latest/)
* **Database / DataWarehouse**
  * [sqlAlchemy usage](https://www.pythonsheets.com/notes/python-sqlalchemy.html)
  * [Pandas cheatsheet](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)
  * PostgreSQL ([datetime functs](https://www.postgresql.org/docs/9.1/functions-datetime.html))
  * Consider SQL (but [don't use `select *`](https://tanelpoder.com/posts/reasons-why-select-star-is-bad-for-sql-performance/))
  * Be aware of [feature casualties of large databases](https://web.dev/streams/)
  * [Data Science - Hierarchy of Needs](https://hackernoon.com/the-ai-hierarchy-of-needs-18f111fcc007)
* **Security**
  * Audit [security](https://hangar.tech/posts/our-dsq/)
  * Understand [SSH tunnels](https://robotmoon.com/ssh-tunnels/)
  * [Anticipatory Failure Determination](https://historyofyesterday.com/suppose-i-wanted-to-kill-a-lot-of-pilots-f126bbc756fa)
  * [Secret Management for APIs](https://blog.gitguardian.com/secrets-api-management/)
* **Programming Personalizations**
  * Code-tags ([PEP-0350](https://www.python.org/dev/peps/pep-0350/#mnemonics))
  * vscode tip: turn off _openDiffOnClick_
  * [git bash solarized :sun_with_face:](https://github.com/speedpacer/gitbash_solarized/issues)
  * [Music for programming](https://www.musicforprogramming.net)
  * [OpenStack](https://docs.openstack.org/hacking/latest/user/hacking.html#styleguide): Linting and Pre-commit Hooks
* **Deploying**
  * Virtualize Everything! [Awesome-Compose](https://github.com/docker/awesome-compose).
* **AI / ML / Modelling**
  * [open source cousin to GPL3](https://github.com/kingoflolz/mesh-transformer-jax)
  * [Machine Learning Master](https://machinelearningmastery.com/) is a great resource!
* **Philosophy / Mindset / Principles**
  * [the-importance-of-humility-in-software-development](https://humbletoolsmith.com/2020/08/10/the-importance-of-humility-in-software-development/)
  * _doing it right_ vs _doing it on time_
  * Closed Source Software: If you cannot check what it does / how it works, do not use it for the sake of security.
  * [Software Design X Dieter Rams](https://github.com/zedr/dieter-rams-10-applied-to-software)
* **Collaboration / Working in a team**
  * [SPACE (satification, performance, activity, communication, efficiency)](https://queue.acm.org/detail.cfm?id=3454124)
  * [Google's Four DevOp KPIs](https://cloud.google.com/blog/products/devops-sre/using-the-four-keys-to-measure-your-devops-performance)
  * Details about [pair programming](https://martinfowler.com/articles/on-pair-programming.html)
  * Is [extreme programming](http://www.extremeprogramming.org/) a thing?
  * Collaboration (tools: [csvbox](https://csvbox.io/), [pyodide](https://github.com/pyodide/pyodide))
  * Resolve [Joel's 12 Questions](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
  * keeping the repo nice ![Coverage badge][coverage-badge]
  * keep repo nice with [makefile](https://makefiletutorial.com/)
* **Misc**
  * [Things you should do now](https://secure.phabricator.com/book/phabflavor/article/things_you_should_do_now/)
  * Follow [naming conventions](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)
  * Follow [software engineering laws](https://www.netmeister.org/blog/software-engineering-laws.html)
  * There's some gold nuggets this [reddit post](https://old.reddit.com/r/ExperiencedDevs/comments/nmodyl/drunk_post_things_ive_learned_as_a_sr_engineer/)
* Mac Software
  * [Lulu Firewall](https://objective-see.com/products/lulu.html)
  * [NightOwal](https://nightowl.kramser.xyz/)

[coverage-badge]: https://img.shields.io/badge/Coverage-100%25-brightgreen.svg

[^1]: Read about the [difference between docker repos and registries](https://stackoverflow.com/a/34004418/5684214)
