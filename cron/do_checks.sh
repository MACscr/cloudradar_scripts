#!/bin/bash
shopt -s extglob
cd /root/cloudradar_checks/
FILES=*
for f in $FILES
do
  if [ "$f" == "do_checks.sh" ] ; then
    continue;
  fi
  echo "Running $f";
  ./$f;
done
