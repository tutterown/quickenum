# quickenum
Script to automate normal enumeration steps.
It will run the following commands:  
 ```
 curl example.com > quickenum_curl.txt  
nmap -sC -sV example.com > quickenum_nmap.txt  
dirb example.com /URLwordlist.txt > quickenum_dirb.txt
 ``` 

# Usage
To run the script on an endpoint, use the following syntax  

`./quickenum example.com`
