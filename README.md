# Juice Box

Based on [boxcutter/ubuntu](https://github.com/boxcutter/ubuntu).

## Reason

Technical workshops shouldn't be about installing a development environment in Linux, Windows, OS X, or whatever else. Unless that's what they are about, this takes way to much time from everyone and it's a pain.

## Specs

This project includes two [Packer](https://packer.io/) templates:

- server.json - No desktop environment.
- desktop.json - Xubuntu desktop environment.

Both of them build a virtual machine based on `Ubuntu Server 14.04` with the the following software installed:

- [Git](https://github.com/jpadilla/dev-box/blob/master/scripts/provisioning/git.sh)
- [Python 2.7 with pip, virtualenv, and virtualenvwrapper](https://github.com/jpadilla/dev-box/blob/master/scripts/provisioning/python.sh)
- [io.js with nvm](https://github.com/jpadilla/dev-box/blob/master/scripts/provisioning/iojs.sh)
- [MongoDB](https://github.com/jpadilla/dev-box/blob/master/scripts/provisioning/mongodb.sh)
- [Redis](https://github.com/jpadilla/dev-box/blob/master/scripts/provisioning/redis.sh)
- [PostgreSQL](https://github.com/jpadilla/dev-box/blob/master/scripts/provisioning/postgresql.sh)

Desktop version has the following installed:

- [Sublime Text 3](https://github.com/jpadilla/juicebox/blob/master/scripts/provisioning/sublime-text-3.sh)
- [Google Chrome](https://github.com/jpadilla/juicebox/blob/master/scripts/provisioning/google-chrome.sh)
- [Firefox](https://github.com/jpadilla/juicebox/blob/master/scripts/provisioning/firefox.sh)

## Distributing

I'll be building OVA files and Vagrant boxes for each version and hosting them.

## Building and Uploading

Requirements:
- [Packer](https://packer.io/)
- [S3cmd](http://s3tools.org/s3cmd)

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
