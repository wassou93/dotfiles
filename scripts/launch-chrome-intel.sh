#!/bin/bash
export DRI_PRIME=1
export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=intel
/usr/bin/google-chrome-beta --enable-features=UseOzonePlatform --ozone-platform=wayland "$@"

