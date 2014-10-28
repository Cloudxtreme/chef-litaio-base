# litaio_base

This is a Chef cookbook for standard configuration applied to all lita.io servers.

## Recipes

### default

* Updates the apt package cache.
* Sets the hostname.
* Disables root login and password authentication for OpenSSH.
* Runs the *users* recipe.
* Installs NTP.
* Installs Vim.
* Installs Docker and adds the created users to the docker group.

### users

* Creates users as specified by the cookbook's attributes and gives them passwordless sudo.
