#! /bin/awk -f
BEGIN {
for (i = 1; i < ARGC; i++) printf "%s ", ARGV[i]
printf "\n"
exit }