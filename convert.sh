#!/bin/sh

KSY_FILE=dwg_ac1003.ksy
OUTPUT_PM_FILE=AC1003.pm

ksc -t perl $KSY_FILE
mv DwgAc1003.pm $OUTPUT_PM_FILE
sed -i s/DwgAc1003/CAD::Format::DWG::AC1003/g $OUTPUT_PM_FILE
