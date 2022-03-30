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
  * Code-tags ([PEP-0350](https://www.python.org/dev/peps/pep-0350/#mnemonics))
  * vscode tip: turn off _openDiffOnClick_
  * [git bash solarized :sun_with_face:](https://github.com/speedpacer/gitbash_solarized/issues)
  * [Music for programming](https://www.musicforprogramming.net)
  * [OpenStack](https://docs.openstack.org/hacking/latest/user/hacking.html#styleguide): Linting and Pre-commit Hooks
* 🧠 **Algorithms / AI / ML / Modelling**
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
* **Misc**
  * [Use NestedText](https://nestedtext.org/en/latest/alternatives.html#): No YAML, TOML, or INI. CSV/TSV is acceptable.
  * [Things you should do now](https://secure.phabricator.com/book/phabflavor/article/things_you_should_do_now/)
  * Follow [naming conventions](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)
  * Follow [software engineering laws](https://www.netmeister.org/blog/software-engineering-laws.html)
  * There's some gold nuggets this [reddit post](https://old.reddit.com/r/ExperiencedDevs/comments/nmodyl/drunk_post_things_ive_learned_as_a_sr_engineer/)

[coverage-badge]: https://img.shields.io/badge/Coverage-100%25-brightgreen.svg

[^1]: Read about the [difference between docker repos and registries](https://stackoverflow.com/a/34004418/5684214)
