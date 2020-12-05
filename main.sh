#!/bin/bash

command_exists () {
  command "$1" &> /dev/null ;
}

pacman -Syyu --noconfirm
pacman -S gcc

if command_exists rbenv
then
  chmod +x main.rb
  ruby main.rb
else
  gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

  \curl -sSL https://get.rvm.io | bash -s stable --rails
  echo "Ruby installed, now running main.rb"
  chmod +x main.rb
  ruby main.rb
fi