declare -a apps=("skype" "spotify" "calibre" "cyberduck" "flux" "vlc" "typora" "iterm2" "google-chrome" "caskroom/versions/google-chrome-canary" "firefox" "docker" "sequel-pro" "alfred" "whatsapp" "adobe-acrobat-reader")

set -x

for app in "${apps[@]}"
do
    brew cask install --appdir="/Applications" $app
done