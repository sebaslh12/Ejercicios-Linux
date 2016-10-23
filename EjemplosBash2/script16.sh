#!/bin/bash
cadifconfig=`ifconfig`
iplog=${cadifconfig#*lo *Direc. inet:}

echo "Primer paso\n"

echo $iplog

iplog=${iplog%% *}

echo "Segundo paso\n"

echo $iplog

echo "La direccion ip del bucle local es $iplog"
