#!/usr/bin/env bash

set -e

echo "Step 1/5 - Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/homebrew/go/install)"

echo "Step 2/5 - Installing oh-my-zsh"
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

echo "Step 3/5 - Installing rbenv"
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
echo 'export RBENV_ROOT="${HOME}/.rbenv"' >> ${HOME}/.zshrc
echo 'export PATH="${RBENV_ROOT}/bin:${PATH}"'  >> ${HOME}/.zshrc
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi'  >> ${HOME}/.zshrc
. ${HOME}/.zshrc

echo "Step 4/5 - Installing Ruby 2.1.2"
rbenv install 2.1.2
rbenv global 2.1.2

echo "Step 5/5 - Installing Jekyll, Finally!!!"
gem install github-pages
