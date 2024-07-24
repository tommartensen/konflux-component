TAG := # make sure tag is never injectable as an env var
ifneq ($(BUILD_TAG),)
TAG := $(BUILD_TAG)
endif

ifeq ($(TAG),)
TAG=$(shell git describe --tags --abbrev=10 --dirty --long --exclude '*-nightly-*')$(MAIN_TAG_SUFFIX)
endif

tag:
	@echo $(TAG)
