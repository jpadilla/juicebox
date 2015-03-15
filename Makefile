HACKER_BUILD_VERSION ?= 0.0.1
HACKER_BUILD_NAME ?= dev-box-hacker-$(HACKER_BUILD_VERSION)
HACKER_BOX_NAME ?= $(HACKER_BUILD_NAME).box
HACKER_BOX_PATH ?= box/virtualbox/$(HACKER_BOX_NAME)
HACKER_OVA_NAME ?= $(HACKER_BUILD_NAME).ova
HACKER_OVA_PATH ?= output-dev-box-hacker/$(HACKER_OVA_NAME)

DESKTOP_BUILD_VERSION ?= 0.0.1
DESKTOP_BUILD_NAME ?= dev-box-desktop-$(DESKTOP_BUILD_VERSION)
DESKTOP_BOX_NAME ?= $(DESKTOP_BUILD_NAME).box
DESKTOP_BOX_PATH ?= box/virtualbox/$(DESKTOP_BOX_NAME)
DESKTOP_OVA_NAME ?= $(DESKTOP_BUILD_NAME).ova
DESKTOP_OVA_PATH ?= output-dev-box-desktop/$(DESKTOP_OVA_NAME)

BUCKET_NAME ?= io-blimp-dev-box

hacker:
	packer build hacker.json

desktop:
	packer build desktop.json

upload/dev-box-hacker:
	s3cmd put $(HACKER_BOX_PATH) $(HACKER_OVA_PATH) s3://$(BUCKET_NAME)/

upload/dev-box-desktop:
	s3cmd put $(DESKTOP_BOX_PATH) $(DESKTOP_OVA_PATH) s3://$(BUCKET_NAME)/
