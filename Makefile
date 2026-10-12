# Copyright (C) 2016-2026 OpenWrt.org
#
# This is free software, licensed under the Apache License, Version 2.0.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-wolplus
PKG_VERSION:=1.2
PKG_RELEASE:=r20261012
PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=sundaqiang

LUCI_TITLE:=LuCI support for wolplus From sundaqiang
LUCI_DESCRIPTION:=LuCI web interface for Wake-on-LAN, supports host list management, \
	MAC auto-complete from LAN hosts, multi-NIC selection and one-click wakeup.
LUCI_DEPENDS:=+luci-base +etherwake +rpcd +ucode +ucode-mod-fs +ucode-mod-uci
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
