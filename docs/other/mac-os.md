# macOS reference

This repo is focused on Linux, but here are some macOS **Homebrew** packages to install, based on what I have installed before directly or indirectly.


## System packages

Use Bash to install Homebrew - see [brew.sh](https://brew.sh/) homepage.


## Install Brew packages

Firefox is available as a [cask](https://formulae.brew.sh/cask/firefox) in Brew.

Follow sections below to install more packages. Run `brew install PACKAGE` for any of the packages in this doc.

See also my [Gist Viewer](https://michaelcurrin.github.io/gist-viewer/) collection, as it covers how to install some of these on macOS and Linux.

### Install packages for development

```
git
```

```
# Python
python
ipython
pyenv
pyenv-virtualenv
sphinx-doc
```

```
# JS
node
yarn # will include node
nvm
```
```
# Ruby
ruby
r
groovy
elixir
erlang
```

Get a specific Ruby:

```sh
$ brew install ruby@2.7
```

```
go
hugo
```
```
postgresql
mongodb
sqlite
```
```
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

```
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

### Brew packages dump

Here is a dump of everything in Oct 2020 as a reference.

```sh
$ brew list
```
```
autoconf                httpie                  libxmlsec1              pyenv-virtualenv
bdw-gc                  hugo                    libyaml                 python@3.8
coreutils               icu4c                   little-cms2             python@3.9
cython                  ipython                 mongodb                 r
dnsmasq                 isl                     mpfr                    readline
dyld-headers            jasper                  mysql                   ruby
elixir                  jpeg                    mysql-client            shfmt
erlang                  krb5                    mysql-connector-c       snappy
findutils               kubernetes-cli          mysql-connector-c++     sphinx-doc
freetype                leveldb                 ncurses                 sqlite
gcc                     libevent                nettle                  swig
gdbm                    libffi                  node                    terraform
gettext                 libgcrypt               openblas                tree
git                     libgpg-error            openjdk                 unbound
gmp                     libidn2                 openssl@1.1             webp
gnutls                  libmpc                  p11-kit                 wget
gotty                   libpng                  pcre                    wxmac
gperftools              libtasn1                pcre2                   xz
graphicsmagick          libtiff                 pkg-config              yarn
groovy                  libtool                 postgresql              zeromq
guile                   libunistring            protobuf
htop                    libxml2                 pyenv
```


## Install manually

### Rust

Install Rust using instructions on Rust's [Install](https://www.rust-lang.org/tools/install) page.

You'll use `rustup` to manage your Rust versions after that.

See also my [Rust](https://github.com/MichaelCurrin/learn-to-code/blob/master/en/topics/scripting_languages/Rust/README.md) Learn to Code guide.

### Go

Same with Go. If you don't want to install with Brew, you can follow this instructions - [Install Go manually](https://gist.github.com/MichaelCurrin/5e2bafa7aa4895e56aeb489c91d314d4). Then update or add Go versions to using the Go CLI.
