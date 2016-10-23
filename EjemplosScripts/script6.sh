#!/bin/bash
ls | while read fn; do
	echo "Archivo $fn"
done
