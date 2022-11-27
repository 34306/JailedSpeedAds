ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
IGNORE_WARNINGS=0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = adspeed

$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_FRAMEWORKS = UIKit QuartzCore CoreGraphics AVFoundation


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Messenger"
