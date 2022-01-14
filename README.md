# quickenum
Script to automate standard enumeration steps.
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

This will create four files
```
quickenum_curl.txt
quickenum_nmap.txt
quickenum_dirb.txt
quickenum_subdomains.txt
```

It will output a TL;DR at the end, and you can also `cat` each created file to view the results. Recommended best practice is to run this script inside of a folder dedicated to the host so the created files will be organized under the appropriate target. 
