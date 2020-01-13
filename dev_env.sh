# !/bin/bash

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

git config --global user.name "ghyeon0"
git config --global user.email "xcm1321@gmail.com"
git config --global core.precomposeunicode true
git config --global core.quotepath false

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

defaults write com.apple.screencapture location /Users/ghyeon/Documents/Screenshots && killall SystemUIServer
if ! [ -f ~/Library/KeyBindings/DefaultkeyBinding.dict ]; then mkdir -p ~/Library/KeyBindings && echo '{"₩" = ("insertText:", "\`");}' > ~/Library/KeyBindings/DefaultkeyBinding.dict; fi

defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'

git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

wget -O ~/.config/nvim/init.vim https://raw.githubusercontent.com/ghyeon0/vim_plugin_backup/master/init.vim

nvim +PluginInstall +qall

~/.config/nvim/bundle/youcompleteme/install.py
pip3 install neovim
