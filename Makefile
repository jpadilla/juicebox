SERVER_BUILD_VERSION ?= 1.0.0
SERVER_VM_NAME ?= juicebox-server
SERVER_BUILD_NAME ?= $(SERVER_VM_NAME)-$(SERVER_BUILD_VERSION)
SERVER_BOX_NAME ?= $(SERVER_BUILD_NAME).box
SERVER_BOX_PATH ?= box/virtualbox/$(SERVER_BOX_NAME)
SERVER_OVA_NAME ?= $(SERVER_BUILD_NAME).ova
SERVER_OUTPUT_PATH ?= output-$(SERVER_VM_NAME)
SERVER_OVA_PATH ?= $(SERVER_OUTPUT_PATH)/$(SERVER_OVA_NAME)

DESKTOP_BUILD_VERSION ?= 1.0.0
DESKTOP_VM_NAME ?= juicebox-desktop
DESKTOP_BUILD_NAME ?= $(DESKTOP_VM_NAME)-$(DESKTOP_BUILD_VERSION)
DESKTOP_BOX_NAME ?= $(DESKTOP_BUILD_NAME).box
DESKTOP_BOX_PATH ?= box/virtualbox/$(DESKTOP_BOX_NAME)
DESKTOP_OVA_NAME ?= $(DESKTOP_BUILD_NAME).ova
DESKTOP_OUTPUT_PATH ?= output-$(DESKTOP_VM_NAME)
DESKTOP_OVA_PATH ?= $(DESKTOP_OUTPUT_PATH)/$(DESKTOP_OVA_NAME)

BUCKET_NAME ?= io-blimp-juicebox

clean:
	rm -rf $(DESKTOP_OUTPUT_PATH) $(SERVER_OUTPUT_PATH)

server:
	packer build server.json

desktop:
	packer build desktop.json

upload/server:
	s3cmd --access_key=$(AWS_ACCESS_KEY_ID) --secret_key=$(AWS_SECRET_ACCESS_KEY) put $(SERVER_BOX_PATH) $(SERVER_OVA_PATH) s3://$(BUCKET_NAME)/

upload/server/box:
	s3cmd --access_key=$(AWS_ACCESS_KEY_ID) --secret_key=$(AWS_SECRET_ACCESS_KEY) put $(SERVER_BOX_PATH) s3://$(BUCKET_NAME)/

upload/server/ova:
	s3cmd --access_key=$(AWS_ACCESS_KEY_ID) --secret_key=$(AWS_SECRET_ACCESS_KEY) put $(SERVER_OVA_PATH) s3://$(BUCKET_NAME)/

upload/desktop:
	s3cmd --access_key=$(AWS_ACCESS_KEY_ID) --secret_key=$(AWS_SECRET_ACCESS_KEY) put $(DESKTOP_BOX_PATH) $(DESKTOP_OVA_PATH) s3://$(BUCKET_NAME)/

upload/desktop/box:
	s3cmd --access_key=$(AWS_ACCESS_KEY_ID) --secret_key=$(AWS_SECRET_ACCESS_KEY) put $(DESKTOP_BOX_PATH) s3://$(BUCKET_NAME)/

upload/desktop/ova:
	s3cmd --access_key=$(AWS_ACCESS_KEY_ID) --secret_key=$(AWS_SECRET_ACCESS_KEY) put $(DESKTOP_OVA_PATH) s3://$(BUCKET_NAME)/
