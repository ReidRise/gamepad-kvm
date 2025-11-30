GAMEPAD_KVM_VERSION = v1.0.0
GAMEPAD_KVM_SITE = $(call github,ReidRise,gameview-backend,$(GAMEPAD_KVM_VERSION))
GAMEPAD_KVM_SITE_METHOD = git
AMAZON_ECR_CREDENTIAL_HELPER_SUBDIR = videoStream


GAMEPAD_KVM_GOMOD = ./

$(eval $(golang-package))