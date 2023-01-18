BASEDIR=$(cd $(dirname $0); pwd)

if [[ "$1" == "install" && "$2" == "tmux" ]]; then
    if command -v tmux > /dev/null; then
        if [[ ! -f "~/.tmux.conf" || "$LINUXCONF_FORCE" != "" ]]; then
            echo "Copy .tmux.conf and source it."
            cp $BASEDIR/conf/.tmux.conf ~
            tmux source-file ~/.tmux.conf
        else
            echo "File tmux.conf exists. Skip."
        fi
    else
        echo "Do not find tmux in PATH. Skip."
    fi
elif [[ "$1" == "install" && "$2" == "neovim" ]]; then
    if command -v nvim > /dev/null; then
        if [[ ! -f "~/.config/nvim/init.vim" || "$LINUXCONF_FORCE" != "" ]]; then
            echo "Copy .vimrc to ~/.config/nvim/init.vim."
            mkdir -p ~/.config/nvim/
            cp $BASEDIR/conf/.vimrc ~/.config/nvim/init.vim

            echo
            echo "Follow this document:"
            echo
            echo '  1. Install Node.js:'
            echo
            echo '    1.1. Check to make sure you have Node.js by `node -v`. If you have, skip to install Node.js.'
            echo '    1.2. Use `curl -sL install-node.now.sh/lts | bash` to install Node.js for coc.nvim'
            echo
            echo '  2. Follow the document to install vim-plug: https://github.com/junegunn/vim-plug#installation'
            echo "  3. Run command in nvim:"
            echo
            echo '    3.1. `:PlugInstall`'
            echo '    3.2. `:CocInstall <extensions>`. Get coc extensions here:'
            echo '         https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions'
            echo '    3.3. `:CocConfig` and edit coc-config.json by `:r conf/coc-settings`'
            echo
        else
            echo "File ~/.config/nvim/init.vim exists. Skip."
        fi
    else
        echo "Do not find nvim in PATH. Skip."
    fi
fi
