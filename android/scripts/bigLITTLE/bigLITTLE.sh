#!/system/bin/sh
#
# big.LITTLE switcher test
#
# Copyright (C) 2010 - 2014, Linaro Limited.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# Author: Harigopal Gollamudi <harigopal.gollamudi@linaro.org>
# Maintainer: Botao Sun <botao.sun@linaro.org>

echo "run_stress_switcher_tests"
sh /system/bin/run_stress_switcher_tests.sh -a > stdout.log 2>&1
cat stdout.log | egrep -w "PASS|FAIL"
rm -rf stdout.log
