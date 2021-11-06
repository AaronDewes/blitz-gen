#!/bin/bash -e


install -m 644 files/build_sdcard.sh		"${ROOTFS_DIR}/build_sdcard.sh"

on_chroot << EOF
	sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
	# setuptools needed for Nyx
	sudo pip install setuptools
	/build_sdcard.sh
	rm /build_sdcard.sh
EOF
