# Dev Machine

🚧 I'm currently in the process of [switching to Linux](https://github.com/DannyDannyDanny/methodology/issues/5).

🧤 Get comfortable with these tools on a system you are familiar with like MacOS or Windows (via Windows-Subsystem-Linux).


| Tool |Linux-Compatible | MacOS-compatible | Description |
|--- |--- | --- | --- |
| [`zsh`](https://www.zsh.org/) + [omz](https://github.com/ohmyzsh/ohmyzsh) | ✅ |  ✅ | Preferred Shell + Configurator |
| [`lf`](https://github.com/gokcehan/lf) | ✅ |  ✅ | CLI file browser |
| [`vim`](https://github.com/gokcehan/lf) | ✅ |  ✅ | CLI text editor  |
| [`mutt`](http://www.mutt.org/) | ✅ |  ✅ | CLI email client |

🔖 Further reading:
* [Unix as IDE](https://blog.sanctum.geek.nz/series/unix-as-ide/)

### Other notes

* `.zshrc`
  * During zsh setup, a `.zhrc` file is generated and left in the root. The following .zshrc content should extend (rather than replace) your `.zshrc`.
  * bash: `alias doco="docker-compose"`
  * use vim bindings: `bindkey -v`
