#!/bin/bash 

sumatoria(){
    if [ $1 -le 1 ]
    then
	return 1
    else
	sumatoria $[$1-1]
        return $[$1+$?]
    fi
}
sumatoria 5
echo "sumatoria 5 = $?"