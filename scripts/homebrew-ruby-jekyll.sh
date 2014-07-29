#!/usr/bin/env bash
puts "Step 1/6 - Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/homebrew/go/install)"

puts "Step 2/6 - Installing git"
brew install git

puts "Step 3/6 - Installing oh-my-zsh"
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

puts "Step 4/6 - Installing rbenv"
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash

puts "Step 5/6 - Installing Ruby 2.1.2"
rbenv install 2.1.2
rbenv global 2.1.2

puts "Step 6/6 - Installing Jekyll, Finally!!!"
gem install github-pages