# UDMP Monitor MTU

UDMP Monitor MTU is a shell script that checks all VLAN interfaces and LAN SFP+ ports on the UDM Pro and sets them to 9216. This allows for intervlan routing to take place without being fragmented. This runs every 5 seconds but can be modified if you change the sleep values in the script.

## Pre-Requisites
UDMP has to have the Boot script installed from this repo https://github.com/boostchicken/udm-utilities/tree/master/on-boot-script


## Installation

Place the 10-monitor-mtu.sh in /mnt/data/on_boot.d/ folder and mark it as executable.

```bash
chmod +x 10-monitor-mtu.sh
```
***IMPORTANT***

Current [Feature Request](https://github.com/boostchicken/udm-utilities/issues/162) with udm-utilities so this doesn't have to be done.

Modify your on_boot.sh file on line 6 under /mnt/data/on_boot.sh to match this.

[line 6](https://github.com/kalenarndt/udmp-jumbo-frames/blob/8ac3f6fe5527ff20cb0047d0c22784090012f001/on_boot.sh#L6)

```bash
#!/bin/sh

if [ -d /mnt/data/on_boot.d ]; then
        for i in /mnt/data/on_boot.d/*.sh; do
                if [ -r $i ]; then
                        . $i &
                fi
        done
fi
```



## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)