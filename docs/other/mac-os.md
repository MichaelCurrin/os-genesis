# macOS reference

This repo is focused on Linux, but here are some macOS commands based on what I have installed before directly or indirectly.

Run `brew install PACKAGE` for any of the packages in this doc.


## Install dev packages

```
git

python
ipython
pyenv
pyenv-virtualenv
sphinx-doc

node
yarn # will include node

ruby
r
groovy
elixir
erlang

hugo

postgresql
mongodb
sqlite

terraform

graphicsmagick
```

<!-- NVM? Curl? -->


## Install shell tools

```
findutils
tree
htop
httpie
gcc
wget
```

If you have problems in interactive shells with pressing arrow keys but getting escape characters, then try a solution from [here](https://stackoverflow.com/questions/893053/seeing-escape-characters-when-pressing-the-arrow-keys-in-python-shell).

```sh
readline
```

For access to `gdate` from GNU Linux, based on research.

```sh
$ brew rm coreutils && brew install coreutils
$ gdate
```


## Install libs

```
openssl
openssl@1.1
```


## Dump

Here is a dump of everything in Aug 2020 as a reference.

```sh
$ brew list
```
```
autoconf                icu4c                   little-cms2             python
coreutils               ipython                 mongodb                 r
dnsmasq                 isl                     mpfr                    readline
elixir                  jasper                  mysql                   ruby
erlang                  jpeg                    mysql-client            shfmt
findutils               kubernetes-cli          mysql-connector-c       snappy
freetype                leveldb                 mysql-connector-c++     sphinx-doc
gcc                     libffi                  ncurses                 sqlite
gdbm                    libgcrypt               nettle                  swig
gettext                 libgpg-error            node                    terraform
git                     libidn2                 openblas                tree
gmp                     libmpc                  openssl                 webp
gnutls                  libpng                  openssl@1.1             wget
gotty                   libtasn1                p11-kit                 wxmac
gperftools              libtiff                 pcre                    xz
graphicsmagick          libtool                 pcre2                   yarn
groovy                  libunistring            pkg-config              zeromq
htop                    libxml2                 postgresql
httpie                  libxmlsec1              pyenv
hugo                    libyaml                 pyenv-virtualenv
```
