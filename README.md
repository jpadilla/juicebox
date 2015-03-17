# dev-box

Based on [boxcutter/ubuntu](https://github.com/boxcutter/ubuntu).

## Reason

Technical workshops shouldn't be about installing a development environment in Linux, Windows, OS X, or whatever else. Unless that's what they are about, this takes way to much time from everyone and it's a pain.

## Specs

This project includes two [Packer](https://packer.io/) templates:

- server.json - No desktop environment.
- desktop.json - Default Ubuntu desktop environment.

Both of them build a virtual machine based on `Ubuntu Server 14.04` with the the following software installed:

- [Git](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/git.sh)
- [Go](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/go.sh)
- [Python 2.7 with pip, virtualenv, and virtualenvwrapper](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/python.sh)
- [io.js with nvm](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/iojs.sh)
- [MongoDB](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/mongodb.sh)
- [Redis](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/redis.sh)
- [PostgreSQL](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/postgresql.sh)

Desktop version has the following [installed](https://github.com/jpadilla/dev-box/blob/master/script/provisioning/desktop-apps.sh):

- Sublime Text 3
- Google Chrome

## Distributing

I'll be building OVA files and Vagrant boxes for each version and hosting them.

## Building and Uploading

### Server

```
$ make server
$ AWS_ACCESS_KEY_ID='' AWS_SECRET_ACCESS_KEY='' make upload/server
```

### Desktop

```
$ make desktop
$ AWS_ACCESS_KEY_ID='' AWS_SECRET_ACCESS_KEY='' make upload/desktop
```
