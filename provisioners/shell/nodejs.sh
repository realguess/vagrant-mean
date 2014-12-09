#!/usr/bin/env bash
#
# Install Node.js via package manager.
#
# See <https://github.com/joyent/node/wiki/installing-node.js-via-package-manager>.

export DEBIAN_FRONTEND=noninteractive
curl -sL https://deb.nodesource.com/setup | bash - && apt-get install -y nodejs
