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
            echo '  1. Use `curl -sL install-node.now.sh/lts | bash` to install node for coc.nvim'
            echo '  2. Follow the document to install vim-plug: https://github.com/junegunn/vim-plug'
            echo "  3. Run command in nvim:"
            echo
            echo '    3.1. `:PlugInstall`'
            echo '    3.2. `:CocInstall coc-git coc-java`'
            echo
        else
            echo "File ~/.config/nvim/init.vim exists. Skip."
        fi
    else
        echo "Do not find nvim in PATH. Skip."
    fi
fi
