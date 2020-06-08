#!/bin/bash
mkdir txt
cd raw
ls | while read i; do html2text $i > ../txt/$i.txt; done
cd ..
tar -cf data-rba-smp_txt.tar txt/
gzip data-rba-smp_txt.tar
