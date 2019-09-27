#!/bin/bash

# Warning!
# Do not run this script if you don't know what you do!

# General common files
cd _vscp_common_general
rm -f *
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/common/dllist.c
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/common/dllist.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/common/crc.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/common/crc.c
cd ..
# VSCP Common files
cd _vscp_common
rm -f *
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/version.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/canal.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/canal_macro.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/vscp.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/vscp_class.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/vscp_type.h
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/guid.cpp
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/guid.h
cd ..
