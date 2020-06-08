#!/bin/bash
mkdir raw
cd raw
cat ../data_rba_smp_list | while read i; do wget $i; done
cd ..
tar -cf data-rba-smp_raw.tar raw/
gzip data-rba-smp_raw.tar
rm -r raw/
