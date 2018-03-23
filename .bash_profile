# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/dotfiles/code/z/z.sh

# init rvm
# source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

export JAVA8_HOME="$(/usr/libexec/java_home -v 1.8.0_102)"

# Export local Cellar for homebrew binary
export PATH="/usr/local/Cellar:$PATH"

# Gem Path
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

#PHP Path
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

#Composer Path
export PATH=${PATH}:~/.composer/vendor/bin

#ADB Path
export PATH=${PATH}:~/Documents/_and-sdk-mac_x86/platform-tools

export EDITOR=mate