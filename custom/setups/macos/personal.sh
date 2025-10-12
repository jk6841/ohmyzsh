#!/bin/zsh

## zsh-users plugins
plugins=(
  "zsh-autosuggestions"
  "zsh-completions"
  "zsh-syntax-highlighting"
)
for plugin in "${plugins[@]}"; do
  echo "Removing plugins/$plugin"
  rm -rf "plugins/$plugin"
  git clone --depth 1 "https://github.com/zsh-users/$plugin" "plugins/$plugin"
done

## Delete unnecessary files
### plugins
dirs=(
  "jenv"
  "laravel"
  "laravel4"
  "laravel5"
  "cake"
  "cakephp3"
  "composer"
  "symfony"
  "symfony2"
  "symfony6"
  "ansible"
  "poetry"
  "poetry-env"
  "argocd"
  "coffee"
  "salt"
  "ember-cli"
  "yum"
  "vagrant-prompt"
  "vagrant"
  "supervisor"
  "chucknorris"
  "hitchhiker"
  "glassfish"
  "sfdx"
  "svn"
  "svn-fast-info"
  "suse"
  "archlinux"
  "dnf"
  "docker"
  "docker-compose"
  "lando"
  "dotnet"
  "gem"
  "juju"
  "lxd"
  "mix"
  "mix-fast"
  "ng"
  "pm2"
  "qodana"
  "ufw"
  "snap"
  "ubuntu"
  "torrent"
  "terraform"
  "sbt"
  "scala"
  "chruby"
  "jruby"
  "rails"
  "rake"
  "rake-fast"
  "rbenv"
  "rbfu"
  "ruby"
  "rvm"
  "thor"
  "emacs"
  "azure"
  "ant"
  "1password"
  "opentofu"
)
for dir in "${dirs[@]}"; do
  echo "Removing plugins/$dir"
  rm -rf "plugins/$dir"
done

### directory patterns
patterns=(
  ".devcontainer"
  ".github"
)
for pattern in "${patterns[@]}"; do
  echo "Removing directories matching $pattern"
  find . -type d -name $pattern -exec rm -rf {} +
done

### file patterns
patterns=(
  "README.md"
  "CODE_OF_CONDUCT.md"
  "CONTRIBUTING.md"
)
for pattern in "${patterns[@]}"; do
  echo "Removing files matching $pattern"
  find . -name $pattern -exec rm -rf {} +
done
