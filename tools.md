# Tools

* **DevOps**
  * Do [CodeReviews](https://softwareengineering.stackexchange.com/questions/141005/how-would-you-know-if-youve-written-readable-and-easily-maintainable-code/141010#141010)
  * Use [scrum methodology](https://www.scruminc.com/scrum-glossary/)
  * Test and Production environments must be the same and very well defined: FreeBSD image or Ubunut Docker container
  * Virtualize Everything! [Awesome-Compose](https://github.com/docker/awesome-compose).
* **Logs**:
  * Application logs `docker-compose logs`
  * Linux-based OS logs: `/var/log/messages`
  * ssh logs `/var/log/audit/audit.log`
* **UX/UI**
  * [Understand, Ideate and Test, Implement](https://uxtools.co/challenges/) UX.
  * Avoid [dark patterns](https://darkpatterns.org/types-of-dark-pattern.html)
* :eyes: **Visualization**
  * problem: it's difficult to include visualization in this workflow but essential to fast prototyping.
  * Perhaps [text-to-diagram](https://xosh.org/text-to-diagram/)
  * [AsciiFlow](https://asciiflow.com/#/)
  * *Spectral*, a [diverging colormap from matplotlib](https://matplotlib.org/3.1.0/tutorials/colors/colormaps.html#diverging).
  * [Tikz Editor](https://tikzcd.yichuanshen.de)
    * [Example: Tikz for Cryptographers](https://www.iacr.org/authors/tikz/)
  * Matplotlib
    * [book of examples](https://raw.githubusercontent.com/rougier/scientific-visualization-book/master/pdf/book.pdf)
    * [cheatsheets](https://matplotlib.org/cheatsheets/)
  * [d3.js example](http://www.r2d3.us/visual-intro-to-machine-learning-part-2/)
  * Types of diagram:
    * [Sequence Diagram](https://en.wikipedia.org/wiki/Sequence_diagram) w([Example:http](https://www.eventhelix.com/networking/http_sequence_diagram.pdf))
* **API**
  * JSON API is the easiet API - [follow the rules](https://jsonapi.org/format/#)
  * Requesting - use Python-[requests](https://docs.python-requests.org/en/latest/)
* **Database / DataWarehouse**
  * [Pandas CheatSheet](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)
  * [sqlAlchemy usage](https://www.pythonsheets.com/notes/python-sqlalchemy.html)
  * [Pandas cheatsheet](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)
  * PostgreSQL ([datetime functs](https://www.postgresql.org/docs/9.1/functions-datetime.html))
  * Consider SQL (but [don't use `select *`](https://tanelpoder.com/posts/reasons-why-select-star-is-bad-for-sql-performance/))
  * Be aware of [feature casualties of large databases](https://web.dev/streams/)
  * [Data Science - Hierarchy of Needs](https://hackernoon.com/the-ai-hierarchy-of-needs-18f111fcc007)
  * [Metabase](https://www.metabase.com/)
* **Security**
  * Audit [security](https://hangar.tech/posts/our-dsq/)
  * Understand [SSH tunnels](https://robotmoon.com/ssh-tunnels/)
  * [Anticipatory Failure Determination](https://historyofyesterday.com/suppose-i-wanted-to-kill-a-lot-of-pilots-f126bbc756fa)
  * [Secret Management for APIs](https://blog.gitguardian.com/secrets-api-management/)
* **Programming Personalizations**
  * Code-tags ([PEP-0350](https://www.python.org/dev/peps/pep-0350/#mnemonics)) / [Stop using TODO](https://goldin.io/blog/stop-using-todo)
  * vscode tip: turn off _openDiffOnClick_
  * [git bash solarized :sun_with_face:](https://github.com/speedpacer/gitbash_solarized/issues)
  * [Music for programming](https://www.musicforprogramming.net)
  * [OpenStack](https://docs.openstack.org/hacking/latest/user/hacking.html#styleguide): Linting and Pre-commit Hooks
* :brain: **Algorithms / AI / ML / Modelling**
  * [open source cousin to GPL3](https://github.com/kingoflolz/mesh-transformer-jax)
  * [Machine Learning Master](https://machinelearningmastery.com/) is a great resource!
  * [Probabilistic Machine Learning: Advanced Topics](https://probml.github.io/pml-book/book2.html#toc)
  * [Algorithms for Modern Hardware](https://en.algorithmica.org/hpc/)
* **Philosophy / Mindset / Principles**
  * [the-importance-of-humility-in-software-development](https://humbletoolsmith.com/2020/08/10/the-importance-of-humility-in-software-development/)
  *  _All gui is bloat and we should just go back to using the abacus_ /NashFPV (youtube comment)
  * _doing it right_ vs _doing it on time_
  * Closed Source Software: If you cannot check what it does / how it works, do not use it for the sake of security.
  * [Software Design X Dieter Rams](https://github.com/zedr/dieter-rams-10-applied-to-software)
  * [approaching hard problems](https://praeclarum.org/2022/02/19/hard-problems.html)
  * [First Principles](https://fs.blog/first-principles/)
  * [Career Complacency](https://apoorvagovind.substack.com/p/how-to-waste-your-career-one-comfortable?s=r)
* **Collaboration / Working in a team**
  * [SPACE (satification, performance, activity, communication, efficiency)](https://queue.acm.org/detail.cfm?id=3454124)
  * [Google's Four DevOp KPIs](https://cloud.google.com/blog/products/devops-sre/using-the-four-keys-to-measure-your-devops-performance)
  * Details about [pair programming](https://martinfowler.com/articles/on-pair-programming.html)
  * Is [extreme programming](http://www.extremeprogramming.org/) a thing?
  * Collaboration (tools: [csvbox](https://csvbox.io/), [pyodide](https://github.com/pyodide/pyodide))
  * Resolve [Joel's 12 Questions](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
  * keeping the repo nice ![Coverage badge][coverage-badge]
  * keep repo nice with [makefile](https://makefiletutorial.com/)
    * [your makefiles are wrong](https://tech.davis-hansson.com/p/make/)
* **Misc**
  * [Use NestedText](https://nestedtext.org/en/latest/alternatives.html#): No YAML, TOML, or INI. CSV/TSV is acceptable.
  * [Things you should do now](https://secure.phabricator.com/book/phabflavor/article/things_you_should_do_now/)
  * Follow [naming conventions](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)
  * Follow [software engineering laws](https://www.netmeister.org/blog/software-engineering-laws.html)

# Writing
* [HemingwayApp](http://www.hemingwayapp.com)
* [Anansi Short Stories](https://en.wikipedia.org/wiki/Anansi)
* [Writing Great Mystery Plots](https://www.vulture.com/2019/10/charles-finch-on-how-he-writes-charles-lenox-mysteries.html)

# Music
Music production, streaming and whatnot.
* [GuitarDashboard](https://guitardashboard.com)
* [DrumBit](https://drumbit.app)
* [BBC Samples](http://bbcsfx.acropolis.org.uk)
* [Music Pods (FunkWhale)](https://funkwhale.audio/#get-started)

# Photo / Video
* [Vintage effect (ffmpeg)](https://ottverse.com/create-vintage-videos-using-ffmpeg/)

# Prog/Misc
* [Kinto Multi-OS shortcuts](https://github.com/rbreaves/kinto)
* [On-Prem Speech-Transcribing](https://github.com/iceychris/LibreASR)
* [What Distinguishes Engineers](https://faculty.washington.edu/ajko/papers/Li2019WhatDistinguishesEngineers.pdf)
* [Architechts Playbook](https://nocomplexity.com/documents/arplaybook/index.html)
* [Apple ML Intro](https://developer.apple.com/documentation/createml/creating_an_image_classifier_model)

## [Pike's 5 Rules](http://users.ece.utexas.edu/~adnan/pike.html)
Rob Pike's 5 Rules of Programming

* **Rule 1.** You can't tell where a program is going to spend its time. Bottlenecks occur in surprising places, so don't try to second guess and put in a speed hack until you've proven that's where the bottleneck is.
* **Rule 2.** Measure. Don't tune for speed until you've measured, and even then don't unless one part of the code overwhelms the rest.
* **Rule 3.** Fancy algorithms are slow when n is small, and n is usually small. Fancy algorithms have big constants. Until you know that n is frequently going to be big, don't get fancy. (Even if n does get big, use Rule 2 first.)
* **Rule 4.** Fancy algorithms are buggier than simple ones, and they're much harder to implement. Use simple algorithms as well as simple data structures.
* **Rule 5.** Data dominates. If you've chosen the right data structures and organized things well, the algorithms will almost always be self-evident. Data structures, not algorithms, are central to programming.

Pike's rules 1 and 2 restate Tony Hoare's famous maxim "Premature optimization is the root of all evil." Ken Thompson rephrased Pike's rules 3 and 4 as "When in doubt, use brute force.". Rules 3 and 4 are instances of the design philosophy KISS. Rule 5 was previously stated by Fred Brooks in The Mythical Man-Month. Rule 5 is often shortened to "write stupid code that uses smart objects".

See also [Akins laws of spacecraft design](https://spacecraft.ssl.umd.edu/akins_laws.html)

### Guides
* [WiFi from the Terminal](https://www.linuxbabe.com/ubuntu/connect-to-wi-fi-from-terminal-on-ubuntu-18-04-19-04-with-wpa-supplicant)
* [How to ssh properly](https://gravitational.com/blog/how-to-ssh-properly/)
* [Pipenv on Ubuntu 18.04](https://gist.github.com/planetceres/8adb62494717c71e93c96d8adad26f5c)
* [Conventions for Command Line Options](https://nullprogram.com/blog/2020/08/01/)
* [Awesome README profiles](https://github.com/kautukkundan/Awesome-Profile-README-templates)
* [NoHello (Team Communication)](https://www.nohello.com/2013/01/please-dont-say-just-hello-in-chat.html)
* [IdownVotedBecause](https://idownvotedbecau.se/)

### Ubunutu Server WiFi Setup
```bash
# bring up the wlan0
sudo ifconfig wlan0 up

# test that we can scan WiFi APs
sudo iwlist wlan0 scan | grep ESSID

# connect to configured network
sudo wpa_supplicant -B -c /etc/wpa_supplicant.conf -i wlan0

# request a ip address from DHCP server
sudo dhclient wlan0

# ip addr show wlan0
ip addr show wlan0

# test connection
ping 8.8.8.8
```

### Python Debug
```
c -> continue?
u -> until (lineno or) exec jumpout
s -> step
n -> next breakpoint
```


### Docker one-liner
```
docker run -p 8888:8888 --name atp_jupy -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN="password" -v C:\Users\XXXX\Documents\:/home/jovyan/work --user root jupyter/datascience-notebook
```

### jupyter-lab config
```
jupyter-lab --generate-config
# uncomment following lines in ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.token = ''
c.NotebookApp.password = ''

# or just run

python -m jupyter lab --no-browser --port=8889 --LabApp.token=password
```


### Console + Logging [[src](https://askubuntu.com/a/731237/882709)]
Overwrite or Append program stdout to logfile while displaying stdout **and `stderr`**.
To write the output of a command to a file, there are basically 10 commonly used ways.

#### Overview:

> <sub>*Please note that the `n.e.` in the syntax column means "not existing".*
There is a way, but it's too complicated to fit into the column. You can find a helpful link in the List section about it.</sub>


              || visible in terminal ||   visible in file   || existing
      Syntax  ||  StdOut  |  StdErr  ||  StdOut  |  StdErr  ||   file
    ==========++==========+==========++==========+==========++===========
        >     ||    no    |   yes    ||   yes    |    no    || overwrite
        >>    ||    no    |   yes    ||   yes    |    no    ||  append
              ||          |          ||          |          ||
       2>     ||   yes    |    no    ||    no    |   yes    || overwrite
       2>>    ||   yes    |    no    ||    no    |   yes    ||  append
              ||          |          ||          |          ||
       &>     ||    no    |    no    ||   yes    |   yes    || overwrite
       &>>    ||    no    |    no    ||   yes    |   yes    ||  append
              ||          |          ||          |          ||
     | tee    ||   yes    |   yes    ||   yes    |    no    || overwrite
     | tee -a ||   yes    |   yes    ||   yes    |    no    ||  append
              ||          |          ||          |          ||
     n.e. (*) ||   yes    |   yes    ||    no    |   yes    || overwrite
     n.e. (*) ||   yes    |   yes    ||    no    |   yes    ||  append
              ||          |          ||          |          ||
    |& tee    ||   yes    |   yes    ||   yes    |   yes    || overwrite
    |& tee -a ||   yes    |   yes    ||   yes    |   yes    ||  append


#### List:

- `command > output.txt`

  The standard output stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, it gets overwritten.

- `command >> output.txt`

  The standard output stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, the new data will get appended to the end of the file.

- `command 2> output.txt`

  The standard error stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, it gets overwritten.

- `command 2>> output.txt`

  The standard error stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, the new data will get appended to the end of the file.

- `command &> output.txt`

  Both the standard output and standard error stream will be redirected to the file only, nothing will be visible in the terminal. If the file already exists, it gets overwritten.

- `command &>> output.txt`

  Both the standard output and standard error stream will be redirected to the file only, nothing will be visible in the terminal. If the file already exists, the new data will get appended to the end of the file..

- `command | tee output.txt`

  The standard output stream will be copied to the file, it will still be visible in the terminal. If the file already exists, it gets overwritten.

- `command | tee -a output.txt`

  The standard output stream will be copied to the file, it will still be visible in the terminal. If the file already exists, the new data will get appended to the end of the file.

- **(*)**

  Bash has no shorthand syntax that allows piping only StdErr to a second command, which would be needed here in combination with `tee` again to complete the table. If you really need something like that, please look at ["How to pipe stderr, and not stdout?" on Stack Overflow](https://stackoverflow.com/q/2342826/4464570) for some ways how this can be done e.g. by swapping streams or using process substitution.

- `command |& tee output.txt`

  Both the standard output and standard error streams will be copied to the file while still being visible in the terminal. If the file already exists, it gets overwritten.

- `command |& tee -a output.txt`

  Both the standard output and standard error streams will be copied to the file while still being visible in the terminal. If the file already exists, the new data will get appended to the end of the file.

# Homebrew
```
# homebrew
imagemagick
pyenv
tmux
tree
sqlite

# cask
clickup
atom
```

## git bash on windows server 2019
```
# what processes are using port 8888?
$ netstat -aon | grep 8888
  TCP    127.0.0.1:8888         0.0.0.0:0              LISTENING       4984

-- kill process 4984
$ tskill 4984
```

[coverage-badge]: https://img.shields.io/badge/Coverage-100%25-brightgreen.svg


[^1]: Read about the [difference between docker repos and registries](https://stackoverflow.com/a/34004418/5684214)
