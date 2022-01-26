
# A small automation script contribution in SecurityExplained to help in RECON.



#!/usr/bin/env bash


read -p "Enter domain name : " input             #Enter the domain name.

for i in ${input[@]}
do

echo "
.
.
.>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Scan started for $i
" | notify -provider telegram --silent


mkdir $i 

subfinder -d $i | httpx >> $i/subdomains.txt      #subdomains gathering

echo "subdomains saved at $i/subdomains.txt." | notify -provider telegram --silent

cat $i/subdomains.txt | waybackurls >> $i/waybackurls.txt

echo "waybackurls saved at $i/waybackurls.txt" | notify -provider telegram --silent       #waybackurls

echo "Gathering URLs for img-traversal" | notify -provider telegram --silent             
cat $i/waybackurls.txt | gf img-traversal >> $i/img-traversal_URL.txt                     #img-traversal URLS
echo "Data saved at img-traversal_URL.txt" | notify -provider telegram --silent

echo "Gathering URLs for interestingEXT" | notify -provider telegram --silent
cat $i/waybackurls.txt | gf interestingEXT >> $i/interestingEXT_URL.txt                  #interestingEXT
echo "Data saved at interestingEXT_URL.txt" | notify -provider telegram --silent

echo "Gathering URLs for interestingsubs" | notify -provider telegram --silent
cat $i/waybackurls.txt | gf interestingsubs >> $i/interestingsubs_URL.txt               #interestingsubs
echo "Data saved at interestingsubs_URL.txt" | notify -provider telegram --silent

echo "Gathering URLs for lfi" | notify -provider telegram --silent
cat $i/waybackurls.txt | gf lfi >> $i/lfi_URL.txt                                       #lfi URLs
echo "Data saved at lfi_URL.txt" | notify -provider telegram --silent

echo "Gathering URLs for redirect" | notify -provider telegram --silent
cat $i/waybackurls.txt | gf redirect >> $i/redirect_URL.txt                            #openredirect URLs
echo "Data saved at redirect_URL.txt" | notify -provider telegram --silent

echo "Gathering URLs for ssti" | notify -provider telegram --silent
cat $i/waybackurls.txt | gf ssti >> $i/ssti_URL.txt                                  #ssti
echo "Data saved at ssti_URL.txt" | notify -provider telegram --silent

echo "Gathering URLs for XSS" | notify -provider telegram --silent
cat $i/waybackurls.txt | gf xss >> $i/xss_URL.txt                                   #XSS
echo " Data saved at xss_URL.txt" | notify -provider telegram --silent

echo "Gathering URLs for sqli" | notify -provider telegram --silent
cat $i/waybackurls.txt | gf sqli >> $i/sqli_URL.txt                               #SQLi
echo "Data saved at sqli_URL.txt" | notify -provider telegram --silent

echo " Starting Dalfox for XSS scan......" | notify -provider telegram --silent    # It will run DALFOX XSS scan for xyz.com/xss_URL.txt
dalfox -b XYZ.xss.ht file $i/xss_URL.txt | notify -provider telegram --silent

done

