# dev-box

Collection of bash scripts for Vagrant provisioning. Useful for hackathons and workshops.

## Usage

To start and provision box with specific bash scripts from master repository:

```
$ PROVISION="python,git" vagrant up
```

To start and provision box with all available scripts:

```
$ vagrant up
```

If working with local provisioning scripts:

```
$ DEBUG=true PROVISION="python,git" vagrant up
```

## TODO
- Ruby/RVM
- Node/NVM
- Go
- Python virtualenv setup