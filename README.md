# dev-box

Based on [boxcutter/ubuntu](https://github.com/boxcutter/ubuntu).

## Reason

Technical workshops shouldn't be about installing a development environment in Linux, Windows, OS X, or whatever else. Unless that's what they are about, this takes way to much time from everyone and it's a pain.

## Specs

This project includes two [Packer](https://packer.io/) templates:

- hacker.json - No desktop environment.
- desktop.json - Default Ubuntu desktop environment.

Both of them build a virtual machine based on `Ubuntu Server 14.04` with the the following software installed:

- Git
- Go
- Python 2.7 with pip, virtualenv, and virtualenvwrapper
- Node.js with nvm
- MongoDB
- Redis
- PostgreSQL

Desktop version has the following installed:

- Sublime Text 3
- Google Chrome

## Distributing

I'll be building OVA files and Vagrant boxes for each version and hosting them.

## Building and Uploading

### Hacker

```
$ make hacker
$ AWS_ACCESS_KEY_ID='' AWS_SECRET_ACCESS_KEY='' make upload/hacker
```

### Desktop

```
$ make desktop
$ AWS_ACCESS_KEY_ID='' AWS_SECRET_ACCESS_KEY='' make upload/desktop
```
