#!/usr/bin/env bash
#
# Install MEAN.
#
# Update NPM to latest (at least 2.1.x branch), necessary for `mean-cli`.
# Both Grunt and Gulp will be installed for having the choice to use either.
#
# See <https://github.com/linnovate/mean>.

export DEBIAN_FRONTEND=noninteractive
npm update -g npm && npm install -g grunt-cli gulp mean-cli
