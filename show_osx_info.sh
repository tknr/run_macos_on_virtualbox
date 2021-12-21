#!/bin/bash
system_profiler SPHardwareDataType
ioreg -p "IODeviceTree" -r -n / -d 1
ioreg -p "IODeviceTree" -n platform -r
nvram 4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14:ROM
nvram 4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14:MLB



