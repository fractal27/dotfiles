# Dotfiles

These are my configuration files with settings applicable to all machines I'm
using.

This repo is best cloned as a bare repository straight into `$HOME`.
It contains a script that clones the repository, configures it to ignore
untracked files and do sparse checkout (so `README.md` and `LICENSE` don't show
up), and initializes all the submodules. It can be run like this, preferably in
`$HOME`:

```bash
bash <(curl -L https://shurturl.at/V31P1)
```

Notice that this *overwrites* existing dotfiles.

From now on, dotfiles can be manipulated with `gdf`, which is an alias for

```bash
git --git-dir="$HOME/.dotfiles.git" --work-tree="$HOME"
```

with the same tab completion as `git` itself.

For example, after a change to `.bashrc`, you'd use

```bash
gdf add .bashrc
gdf commit -m "Update .bashrc"
gdf push
```

## Credits

The structure of using two repositories with generally applicable dotfiles in
the first sourcing machine specific ones from the second was inspired by [this
great article by Anish Athalye][3].

I've seen the idea of using a bare repository for dotfiles first in [this
comment by StreakyCobra on Hacker News][4]. People then expanded on the idea
and wrote about it, specifically Nicola Paolucci in his [tutorial][5] (adding
the idea of using something like a Gist for initialization and pointing out
problems if the files exist already) and Harfang in a [blog post][6].

[1]: https://github.com/bewuethr/dotfiles-local
[2]: https://gist.github.com/bewuethr/4d044f84989cb430a8b9c46dc4ea75c9
[3]: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles
[4]: https://news.ycombinator.com/item?id=11071754
[5]: https://www.atlassian.com/git/tutorials/dotfiles
[6]: https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html
