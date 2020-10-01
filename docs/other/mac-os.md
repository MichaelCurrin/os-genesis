# macOS reference

This repo is focused on Linux, but here are some macOS **Homebrew** packages to install, based on what I have installed before directly or indirectly.


## System packages

Use Bash to install Homebrew - see [brew.sh](https://brew.sh/) homepage.


## Install Brew packages

Firefox is available as a [cask](https://formulae.brew.sh/cask/firefox) in Brew.

Follow sections below to install more packages. Run `brew install PACKAGE` for any of the packages in this doc.


### Install dev packages

```
git

python
ipython
pyenv
pyenv-virtualenv
sphinx-doc

node
yarn # will include node
nvm

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
```


### Images

See also [gist](https://gist.github.com/MichaelCurrin/32b88b2c70c59832c922bcf03bdc08c3) instuctions.

```
graphicsmagick
```

[ImageMagick formula](https://formulae.brew.sh/formula/imagemagick)

```
imagemagick
```


### Install shell tools

```
findutils
tree
htop
httpie
gcc
wget
```

Curl wasn't in my [Brew dump](#brew-dump) even though it's installed but you can use `curl` as a the package name I think.

#### readline

If you have problems in interactive shells with pressing arrow keys but getting escape characters, then try a solution from [here](https://stackoverflow.com/questions/893053/seeing-escape-characters-when-pressing-the-arrow-keys-in-python-shell).

```sh
readline
```

#### date

For access to `gdate` from GNU Linux, based on research.

```sh
$ brew rm coreutils && brew install coreutils
$ gdate
```

#### sed

GNU / Linux sed.

```
gnu-sed
```

Then add to `.bashrc` or `.zshrc`.

```sh
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
```


### Install libs

```
openssl
openssl@1.1
```

### Brew dump

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
