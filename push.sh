#!/bin/bash

#git push origin master:master
mTOP_DIR=`pwd`
echo $mTOP_DIR
if [ -n "$1" ];then
	PUSH_DIR=$1
else
	PUSH_DIR="split"
fi
echo ${PUSH_DIR}
#PROJECTS_FILE=projects.txt
#ls split > ${PROJECTS_FILE}
#PROJECTS=`cat ${PROJECTS_FILE}`
PROJECTS=`ls ${PUSH_DIR}`
cd ${mTOP_DIR}/${PUSH_DIR}
i=0
for project in ${PROJECTS}
do
	if [ $i != 4 ]
	then
		echo -e "\033[32m-->${project}\033[0m"
		git add ${project}
		let i++
	else
		git add ${project}
		git commit -m "Update"
		git push origin master:master
		i=0
	fi
done
cd ${mTOP_DIR}
