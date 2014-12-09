#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Keep the system up to date.
apt-get update && apt-get -y dist-upgrade

# Install essential packages for building applications.
apt-get install -y \
  build-essential  \
  curl             \
  git              \
  vim
