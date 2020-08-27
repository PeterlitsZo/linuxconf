Peterlits' conf
===============================================================================

The all conf file about my linux.

About Zsh
--------------------------------------------------------------------------------

### Oh-my-zsh

Before use `zsh` as a script, you should install `proxychains4`(to use Windows'
proxy) and install `oh-my-zsh` by：

```shell
px wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
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

