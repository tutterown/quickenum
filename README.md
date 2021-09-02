# quickenum
Script to automate normal enumeration steps.
It will run the following commands:  
 ```
 curl example.com > quickenum_curl.txt  
nmap -sC -sV example.com > quickenum_nmap.txt  
dirb http://example.com /URLwordlist.txt > quickenum_dirb.txt
ffuf -c -w /SubdomainWordlist.txt -u http://example.com -H "Host: FUZZ.example.com" -mc 200 > quickenum_subdomains.txt
 ``` 

# Requirements

```
curl
nmap
dirb
ffuf
go
```

# Usage
To run the script on an endpoint, use the following syntax  

`./quickenum example.com`

This will create three files
```
quickenum_curl.txt
quickenum_nmap.txt
quickenum_dirb.txt
quickenum_subdomains.txt
```

You can then `cat` each file to view the results. Recommended best practice is to run this script inside of a folder dedicated to the target so they are all organized under the appropriate target. 
