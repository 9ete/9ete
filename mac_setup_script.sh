
# install homebrew...



brew install wget
# strap essentials see: 
wget https://strap.mikemcquaid.com/strap.sh
bash strap.sh
# remove default dock items
brew install dockutil
dockutil --remove all
brew uninstall dockutil

# create sites dir if not exists
mkdir -p ~/Sites

# install homebrew apps
brewCaskApps="1password alfred chatgpt chromium copilot displaylink docker firefox firefox@developer-edition google-chrome google-chrome@canary istat-menus@6 slack visual-studio-code"
brew install --cask $brewCaskApps 

brewApps="nvm node composer wp-cli wp-cli-completion"
brew install $brewApps

# install lando
/bin/bash -c "$(curl -fsSL https://get.lando.dev/setup-lando.sh)"
