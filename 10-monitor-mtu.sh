#!/bin/sh
function check_mtu {
    ip link list | grep -i eth10 | grep -i 'mtu 9216' > /dev/null;
    ip link list | grep -i switch | grep -i 'mtu 9216' > /dev/null;
}
while true; do
  if check_mtu; then
    echo "MTU is configured" > /dev/null
  else
    echo "Reconfiguring MTU" > /dev/null
    interfaces=$(ip link list | grep -i switch | sed 's/^[^:]*://g; s/:.*//; s/@switch0.*//')
    sfp=$(ip link list | grep -i eth10 | sed 's/^[^:]*://g; s/:.*//; s/@eth10.*//')
    for interface in $interfaces
    do
      ip link set dev $interface mtu 9216
    done
    for sfp in $sfp
    do
      ip link set dev $sfp mtu 9216
    done
  fi
  sleep 5
done
