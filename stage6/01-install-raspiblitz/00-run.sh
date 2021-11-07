#!/bin/bash -e

on_chroot << EOF
	sudo /home/admin/config.scripts/bonus.nodejs.sh on
EOF
