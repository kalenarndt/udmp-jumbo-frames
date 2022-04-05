# UDMP Monitor MTU

# Ubiquiti has added this as a part of the 1.12.13 EA firmware. This repository is now archived

UDMP Monitor MTU is a shell script that checks all VLAN interfaces and LAN SFP+ ports on the UDM Pro and sets them to 9216. This allows for intervlan routing to take place without being fragmented. This runs every 5 seconds but can be modified if you change the sleep values in the script.

## Pre-Requisites
UDMP has to have the Boot script installed from this repo https://github.com/boostchicken/udm-utilities/tree/master/on-boot-script


## Installation

1. Place the 10-monitor-mtu.sh in /mnt/data/on_boot.d/ folder and mark it as executable
2. Place the 11-change-mtu.sh in the /mnt/data folder and mark it as exectable

```bash
chmod +x /mnt/data/on_boot.d/10-monitor-mtu.sh
chmod +x /mnt/data/11-change-mtu.sh
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
