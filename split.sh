#!/bin/bash

mTOP_DIR=`pwd`
FILES_FILE=files.txt
FILES_MD5=md5.txt
INIT_SH=init.sh
sed -i 's/\t//g' $FILES_FILE
FILES=`cat ${FILES_FILE}`
mkdir -p split
rm -rf ${FILES_MD5}
for file in ${FILES}
do
    file=${file#*./}
    echo -e "\033[32m-->${file}\033[0m"
    md5=`md5sum ${file}`
    split -b 99m ${file} split/${file//\//-}_
    echo "dst=\"${file}\"" >> ${INIT_SH}
    echo "md5sum=\"${md5}\"" >> ${INIT_SH}
    cat sample >> ${INIT_SH}
    rm -rf ${file}
done
