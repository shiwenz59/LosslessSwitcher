.PHONY: build run

build:
	xcodebuild -project Quality.xcodeproj -scheme LosslessSwitcher -configuration Debug CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO SYMROOT=$(PWD)/build build

run: build
	open build/Debug/LosslessSwitcher.app
