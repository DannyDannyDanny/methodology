### Development
* Development Cycle [Agile](https://www.atlassian.com/agile/scrum/sprints)

## Development Infrastructure
* **[Setup Dev Machine](setup-dev-machine.md)**
* **Setup Environments**
  * You should be able to run the code and develop without a dedicated server. Get virtualized with [docker-compose](https://docs.docker.com/compose/compose-file/compose-file-v3/).
  * Deploy using Docker + Docker-Compose. Docker keeps all your application events separate from OS events.
    * Add to `.bashrc` on remote server (remove or replace `ENV.`):
    * `alias doco="docker-compose -f docker-compose.ENV.yml"; cd /opt/project/`
* **Setup Version Control**
  * Connect to your repos using [ssh](https://stackoverflow.com/a/65415202/5684214).
  * [Get good at git](https://gitexercises.fracz.com/)
  * Setup git credentials
    * `git config --local user.email (initialis)@(client comain)`
  * Install and use [pre-commit hooks](https://pre-commit.com/) on your dev machine
  * Setup [Travis-CI build testing](https://docs.travis-ci.com/user/customizing-the-build/#building-specific-branches)
  * Add an [`.EditorConfig` file](https://editorconfig.org/)
  * Add [git commit template](https://gist.github.com/lisawolderiksen/a7b99d94c92c6671181611be1641c733#file-git-commit-template-md)
  * Branching strategy: small teams might want to adopt [trunk based development](https://trunkbaseddevelopment.com/)
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
  * Write [code with structre](https://docs.python-guide.org/writing/structure/#structure-of-code-is-key)
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
