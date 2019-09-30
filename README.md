# vscpl1drv-logger

<img src="https://vscp.org/images/logo.png" width="100">

vscpd level I driver for diagnostic logging. It makes it possible to log (VSCP Level I events to a text file. Several drivers can be loaded logging data to different output files and using different filter/masks.

**Available for:** Windows, Linux

**Driver for Linux**
vscpl1drv-logger.so (vscpl1drv-logger.lib)

**Driver for Windows** vscpl1drv-logger.dll (vscpl1drv-logger.lib)

## Parameter String

##### Windows

path;filter;mask

    c:\logfile.log;0x0;0x0

##### Linux

path;filter;mask

    /tmp/logfile;0x0;0x0

The absolute or relative path including the file name to the file that log data should be written to. The filename is followed by the optional 32-bit filter and mask. The default is all events logged.

Note that the filter/mask looks at the CAN ID. If you work with VSCP look at format of the 29 bit CAN identifier in VSCP Bit 32 is set to one for an extended frame (all VSCP frames) and bit 30 is set to one for RTR frames (never for VSCP).

## Flags

* 0 - Append data to an existing file (create it if it's not available).
* 1 - Create a new file or rewrite an old file with new data.
*
## Status return

The CanalGetStatus call returns the status structure with the channel_status member having the following meaning:


*  0 is always returned.

## Log file format

The log file have the following format and consist of the following parts

   * Time when frame was received
   * Timestamp
   * Flags
   * ID
   * Number of databytes
   * Databytes


## Install the driver on Linux
tbd

## Install the driver on Windows
tbd

## How to build the driver on Linux
To build this driver you have to first install the vscp common code. You do this with

```bash
git clone https://github.com/grodansparadis/vscp.git
```

In your .bashrc you then need to add the path to the location where the common code is located. Add

```bash
export VSCP_PATH=path-to-above-folder
```

Now clone the driver source

```bash
git clone https://github.com/grodansparadis/vscpl1drv-logger.git
cd vscpl1drv-logger
./configure
make
make install
```
Default install folder is **/usr/lib**

You need build-essentials and git installed on your system

```bash
sudo apt update && sudo apt -y upgrade
sudo apt install build-essential git
```

if you don't.

## How to build the driver on Windows
tbd
