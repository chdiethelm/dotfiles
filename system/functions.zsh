function remove-orig-files {
    git status -su | grep -e"\.orig$" | cut -f2 -d" " | xargs rm -i
}

function remove-pyc-files {
    find . -name "*.pyc" -exec rm -rf {} \;
}

function remove-trailing-spaces-in-py-files {
    # Trim trailing spaces at end of line
    perl -pi -e "s/ +$//" **/*.py
    # Delete empty lines at end of file
    # perl -i -pe "chomp if eof" **/*.py
}

function git-amend-last-commit-set-date-to-now {
    GIT_COMMITTER_DATE="`date`" git commit --amend --date "`date`"
}

# Gather data from the output, but starting with a particular line, and ending
# with another.
# http://howardabrams.com/projects/dot-files/sh-functions.html
function clip {
    FIRST=$1
    ENDING=$2
    PADDING=${3:-""}

    perl -ne "\$s=1 if (/$FIRST/); \$s=0 if (/$ENDING/); print \"$PADDING\$_\" if (\$s==1);"
}
