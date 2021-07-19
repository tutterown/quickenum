#! /bin/bash

echo "Enter an endpoint"
read URL

curl $URL > quickenum_curl.txt
nmap -sC -sV $URL > quickenum_nmap.txt
#dirb $URL /wordlist.txt > quickenum_dirb.txt
