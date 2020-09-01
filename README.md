# Peterlits' conf
<!-- H1 =================================================================== -->

The all conf file about my linux.

## About Zsh
<!-- H2 =================================================================== -->

### Oh-my-zsh

Before use `zsh` as a script, you should install `proxychains4`(to use Windows'
proxy) and install `oh-my-zsh` by：

```shell
px wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh \
    -O - | sh
```

### Zsh-autosuggestions

After setup `oh-my-zsh`, it is a good idea to get plugin `zsh-autosuggestions`,
so follow the [link](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

### Windows X Server

The `Zsh` set the `DISPLAY` port for `GUI` applications, so you can go to get a
open-source `VcXsrc` and run it with port `8500`.

### Windows VPN Server

To access the web whatever you want, you should:

1. Find a nice seller that give you a useful middle machine, then use the
   application to touch the web you want.
2. Allow LAN to access the application, so we can use it in `WSL` by windows' IP.
3. get the application `proxychains4` in `WSL`.
4. Use `px`.
5. If you still do not get the meaning what I say, push a `issue`.

## About Git Message
<!-- H2 =================================================================== -->

Write a great git commit msg is always a good idea for you.

Move the `./conf/.gitmessage.txt` to `~` and then run:

```shell
git config --global commit.template ~/.gitmessage.txt
```

You can also put it to `<your proj>/conf/gitmessage.txt` and run:

```shell
git config commit.template ~/conf/gitmessage.txt
```

## About NeoVim
<!-- H2 =================================================================== -->

After install `neovim` and then you need to run:

```shell
cp .vimrc ~/.config/nvim/init.vim
```

Use `curl -sL install-node.now.sh/lts | bash` to install node for `coc.nvim`.

Then follow the info what [vim-plug homepage](https://github.com/junegunn/vim-plug)
says to install `vim-plug` and run in `neovim`:

```vim
:PlugInstall
```

Then you need to go to [coc.nvim homepage](https://github.com/neoclide/coc.nvim)
for more infomations.

```vim
CocInstall coc-git coc-java
```

