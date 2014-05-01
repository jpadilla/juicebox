# dev-box

Collection of bash scripts for Vagrant provisioning. Useful for hackathons and workshops.

## Usage

This will provision box with python and git bash scripts in master repository.

```
$ PROVISION="python,git" vagrant up
```

If working with local provisioning scripts use:

```
$ DEBUG=true PROVISION="python,git" vagrant up
```