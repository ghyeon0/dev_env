# !/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install via brew
brew bundle --file=./Brewfile

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ./zsh/.zshrc ~/.zshrc

# install vscode extensions
sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
code --install-extension formulahendry.auto-close-tag
code --install-extension ms-vscode.cpptools
code --install-extension jbenden.c-cpp-flylint
code --install-extension vscjava.vscode-java-debug
code --install-extension dbaeumer.vscode-eslint
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension ritwickdey.liveserver
code --install-extension pkief.material-icon-theme
code --install-extension sdras.night-owl
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-ssh-explorer
code --install-extension octref.vetur
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension tomoki1207.pdf

cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

sudo xcodebuild -license accept

