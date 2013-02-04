export PATH="/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
[[ -e /usr/local/share/npm/bin ]] && export PATH="/usr/local/share/npm/bin:$PATH"
