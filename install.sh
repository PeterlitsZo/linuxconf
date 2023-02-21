BASEDIR=$(cd $(dirname $0); pwd)

install_tmux() {
    if command -v tmux > /dev/null; then
        if [[ ! -f "~/.tmux.conf" || "$LINUXCONF_FORCE" != "" ]]; then
            echo "create link ~/.tmux.conf by conf/tmux and source it."
            ln -s $BASEDIR/conf/tmux ~/.tmux.conf
            tmux source-file ~/.tmux.conf
        else
            echo "File tmux.conf exists. Skip."
        fi
    else
        echo "Do not find tmux in PATH. Skip."
    fi
}

install_neovim() {
    if command -v nvim > /dev/null; then
        if [[ ! -f "~/.config/nvim/init.vim" || "$LINUXCONF_FORCE" != "" ]]; then
            echo "create link ~/.config/nvim/init.vim by conf/vimrc"
            mkdir -p ~/.config/nvim/
            ln -s $BASEDIR/conf/.vimrc ~/.config/nvim/init.vim

            echo
            echo "Follow this document:"
            echo
            echo '  1. Install Node.js:'
            echo
            echo '    1.1. Check to make sure you have Node.js by `node -v`.'
            echo '         If you have, skip to install Node.js.'
            echo '    1.2. Use `curl -sL install-node.now.sh/lts | bash` to install'
            echo '         Node.js for coc.nvim'
            echo
            echo '  2. Follow the document to install vim-plug:'
            echo '     https://github.com/junegunn/vim-plug#installation'
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
}

install() {
    if [[ "$1" == "tmux" ]]; then
        install_tmux
    elif [[ "$1" == "neovim" ]]; then
        install_neovim
    else
        echo "panic"
    fi
}

usage() {
    if [[ "$1" == "" ]]; then
        echo "./install.sh <SUBCOMMAND>"
        echo
        echo "SUBCOMMAND:"
        echo "    install                install config friendly"
        echo "    help [SUBCOMMAND]      show this message or show help message for subcommand"
    elif [[ "$1" == "install" ]]; then
        echo "./install.sh install <ID-OF-CONFIG>"
        echo
        echo "ID-OF-CONFIG:"
        echo "    tmux                   install config for tmux"
        echo "    neovim                 install config for neovim"
    else
        echo "panic"
    fi
}

main() {
    if [[ "$1" == "install" ]]; then
        shift
        install "$@"
    elif [[ "$1" == "help" ]]; then
        shift
        usage "$@"
    else
        usage
    fi
}

main "$@"

