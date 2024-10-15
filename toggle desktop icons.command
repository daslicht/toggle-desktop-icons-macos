current_state=$(defaults read com.apple.finder CreateDesktop)
if [ "$current_state" == "true" ]; then
    defaults write com.apple.finder CreateDesktop false
    echo "Hiding desktop icons"
else
    defaults write com.apple.finder CreateDesktop true
    echo "Showing desktop icons"
fi
killall Finder
