#!/bin/sh
uci set dropbear.@dropbear[0].PasswordAuth='on'
uci set dropbear.@dropbear[0].RootPasswordAuth='on'
uci set dropbear.@dropbear[0].Port='22'
uci commit dropbear
/etc/init.d/dropbear enable
/etc/init.d/dropbear start
exit 0
