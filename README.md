# Peterlits' conf

The all conf file about my linux (wsl2, and Ubuntu).

## About Zsh

### Oh-my-zsh

#### Using system proxy

Before use `zsh` as a script, you should install `proxychains4`(to use Windows'
proxy) and install `oh-my-zsh` by：

```shell
px wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh \
    -O - | sh
```

#### Do not need proxy

If you do not need proxy, just run:

```shell
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh \
    -O - | sh
```

### Zsh-autosuggestions

After setup `oh-my-zsh`, it is a good idea to get plugin `zsh-autosuggestions`,
so follow the [link](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

### Windows X Server

The `Zsh` set the `DISPLAY` port for `GUI` applications, so you can go to get a
open-source `VcXsrc` and run it with port `8500`.

### Paste the `.zshrc` to root

Then paste the .zshrc at the home root `~`:

``` shell
cp ./conf/.zshrc ~
```

### Set as a default shell

You can firstly run `cat /etc/shells` and then run command `chsh`.


## Windows VPN Server

To access the web whatever you want, you should:

1. Find a nice seller that give you a useful middle machine, then use the
   application to touch the web you want.
2. Allow LAN to access the application, so we can use it in `WSL` by windows' IP.
3. get the application `proxychains4` in `WSL`.
4. Use `px`.
5. If you still do not get the meaning what I say, push a `issue`.

## About Git Message

Write a great git commit msg is always a good idea for you.

Move the `./conf/.gitmessage.txt` to `~` and then run:

```shell
git config --global commit.template ~/.gitmessage.txt
```

You can also put it to `<your proj>/conf/gitmessage.txt` and run:

```shell
git config commit.template ./conf/gitmessage.txt
```

## About NeoVim

Run `bash install.sh install neovim`

## About Tmux

Run `bash install.sh install tmux`

