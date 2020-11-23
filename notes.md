# Notes

## NPM

### Configured package directory

The shared directories /usr/local/npm and /usr/local/node_modules are owned by root so a global
install of a package cannot create /usr/local/npm/bin without sudo.

One easy option is to change the permissions of the directory so users other than root can install into it.

```sh
$ sudo chmod 775 /usr/local/lib/npm
```

Now this works without sudo - `/usr/local/lib/npm/lib/node_modules`. So far I have `npm`, `yarn` and `docsify-cli` there.

An alternative is to configure a different NPM directory that is in a home directory. This would affect all users though as you use `-g`, so make sure there aren't other users on your machine.

https://www.gurustop.net/blog/2015/01/12/sudo-npm-install-g-global-mac-ubuntu-linux-windows

Note that `~/.npm` already exists for something else.

```sh
$ npm config -g set prefix ~/npm
```

That updates `~/.npmrc` but so far it is not working for installs.  Though the ignore scripts line set there did make a difference. Lately I can't get the file to change again.


NB. Make sure `$HOME/npm/bin` is in PATH.

Check the value.

```sh
$ npm bin -g
/usr/local/lib/npm/bin

$ npm prefix -g
/usr/local/lib/npm
$ # OR
$ npm config get prefix -g
```


```sh
$ locate npmrc
/home/michael/.npmrc
/usr/lib/node_modules/npm/.npmrc
...
```

Maybe setting `bin` instead of `prefix` will help?


### Ignore scripts

Disable post-install scripts for security.

Unfortunately this also disables `npm run` from working in your projects.

I checked using `--verbose` flag

```
ignored because ignore-scripts is set to true typescript-quickstart@
```

Researched:

https://github.com/npm/npm/issues/10675

But you can use this maybe on an alias.

`npm i -S --ignore-scripts PACKAGE`

```sh
npm config set ignore-scripts true
```
