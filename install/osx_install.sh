set -x
set -e

brew update
brew install macvim --override-system-vim
brew install -U zsh git coreutils zsh-completions rmtrash automake wget mercurial python python3 autojump hub unrar highlight miller fzf dos2unix the_silver_searcher findutils tldr go

echo "Installing fswatch: watch for file changes"
brew install fswatch

echo "Installing jq: json formatting"
brew install jq

# Install fzf shell bindings
/usr/local/opt/fzf/install
