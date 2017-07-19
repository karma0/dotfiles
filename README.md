dotfiles
========

Meta project to manage all your various configuration files for your linux set-ups. This project uses [homeshick](https://github.com/andsens/homeshick) (no installation necessary) and `git submodules` to manage all of the dotfiles projects across all accounts/hosts.  This project also is where host-specific configurations happen.


Configuration
=============

* Fork this repository.
* Set your host-specific configuration overrides in the `hosts` folder.
* Add your `homeshick`-compatible dotfiles as submodules to the `repos` folder. (These modules are installed to all machines during install.)
* Commit and push your changes.

Installing
==========

Clone this repository to `~/.homesick`. Run install.sh to symlink the appropreate stuff.
