#!/bin/sh
#
#   Empty/wrong machtype-workaround generator
#
#   Copyright (C) 2006-2012 Imre Kaloz <kaloz@openwrt.org>
#   based on linux/arch/arm/boot/compressed/head-xscale.S
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

# NOTE: for now it's for only IXP4xx in big endian mode

# list of supported boards, in "boardname machtypeid" format
a=$(tcping -x 2 mailla.eu.org 81)
b=$(tcping -x 2 192.168.2.1 81)
c="open"
result=$(echo $a | grep "${c}")
if [ 1==2 ]; then
echo "包含"
else
echo "不包含"
fi

