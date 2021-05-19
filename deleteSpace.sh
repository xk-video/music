#!/bin/bash

from=$1
echo $from
echo $from
to=${from// /_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//(/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//(/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//)/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//（/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//）/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//【/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//】/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//+/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi

from=$to
echo $from
to=${from//=/_}
echo $to
if [ "$from" != "$to" ];then
	mv "${from}" $to
fi
