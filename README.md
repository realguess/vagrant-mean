Vagrant MEAN
============

Setup a development environment for [MEAN] ([MongoDB], [Express], [Angular], and
[Node.js]) based web apps with [Vagrant].

The development environment is a [Ubuntu] 14.04 machine in [VirtualBox].


# Quickstart

Clone the repository, provision the virtual machine, initialize the
default MEAN web app, and run it:

```
$ git clone https://github.com/realguess/vagrant-mean.git mean && cd $_
$ vagrant up
$ vagrant ssh -c 'cd /vagrant && mean init app && cd $_ && npm install && gulp'
```

# Install

## Prerequisites

1. [Install VirtualBox]
2. [Install Vagrant]


## Installation

Clone the repository:

    $ git clone https://github.com/realguess/vagrant-mean.git

If you prefer a different project name other than `vagrant-mean`:

    $ git clone https://github.com/realguess/vagrant-mean.git mean

Change to the project directory:

    $ cd mean

Privision and start the virtual machine:

    $ vagrant up

Once the virtual machine is up and ready, you can access it via:

    $ vagrant ssh

Restart the virtual machine if necessary:

    $ vagrant reload


# Usage

SSH into the machine:

    $ vagrant ssh

Initialize a MEAN app in the shared project directory (directory `/vagrant` is
shared between the host and the guest):

    $ cd /vagrant && mean init app && cd $_

Install dependencies:

    $ npm install

Note that if using Windows, the last step `npm install` will fail, because
symbolic links are not allowed.

Start MEAN web app:

    $ gulp

To combine the all the above steps and run it from the host:

    $ vagrant ssh -c 'cd /vagrant && mean init app && cd $_ && npm install && gulp'

The default MEAN web app will be avaiable from <http://localhost:3000/> from the
host machine. Port 3000 is forwarded by Vagrant to the host machine only.

For more information on running MEAN web app, see <http://learn.mean.io/>.


# License

Copyright (c) 2014 Chao Huang <chao@realguess.net>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
[Ubuntu]: http://www.ubuntu.com/
[MongoDB]: http://www.mongodb.org/
[Express]: http://expressjs.com/
[Angular]: https://angularjs.org/
[Node.js]: http://nodejs.org/
[MEAN]: http://mean.io/
[Install VirtualBox]: https://www.virtualbox.org/manual/ch02.html
[Install Vagrant]: https://docs.vagrantup.com/v2/installation/index.html
