#!/bin/bash
CUR=`cat ~/.scripts/backlight/current.store`

declare -i CUR

if [[ CUR -gt 0 ]]
then
	(( CUR = CUR - 10 ))
fi

echo $CUR > ~/.scripts/backlight/current.store

backlight_control $CUR

exec ~/.scripts/backlight/dunst-brightness-refresh.sh $CUR
