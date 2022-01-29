## A small automation script contribution in SecurityExplained to help in RECON.

#### Hello Everyone, I am Jaydev Ahire (CyborJ).

#### I created a simple Bash script for my use. Today I am sharing this with you all, there is no Rocket Science in this script, It's a very simple script you just need a little bit of Knowledge of Bash.

## Requirements:
  
   ### [subfinder](https://github.com/projectdiscovery/subfinder), [waybackurls](https://github.com/tomnomnom/waybackurls), [gf](https://github.com/tomnomnom/gf), [Notify](https://github.com/projectdiscovery/notify) (not compulsory), [Dalfox](https://github.com/hahwul/dalfox) (not compulsory)
   
## Installation:
   
   ### Download the file ezyrecon.sh
   ### chmod +x ezyrecon.sh
   ### ./ezyrecon.sh
   
## About the script:

### All you have to do is just enter the target domain name. It will gather all subdomains and will perform waybackurls scan. After collecting waybackurls, This simple script will use gf tool to help you to sort all URLs for XSS, SQLi, Lfi, SSTI, etc.

  #### 1. Enter the target domain: xyz.com
  #### 2. It will make new directory i.e. xyz.com
  #### 3. It will gather all the subdomains using subfinder, httpx and will save it in xyz.com/subdomains.txt (Directory name + file name)
  #### 4. waybackurls scan on subdomains.txt, file saved in xyz.com/waybackurls.txt
  #### 5. After that it will use gf tool to sort all the collected waybackurls,
  #### For XSS:  cat xyz.com/waybackurls.txt | gf xss >> xyz.com/xss_URL.txt (After scanning waybackurls.txt for XSS, It will save sorted URLs at xyz.com/xss_URL.txt)
  #### For SSTI: cat xyz.com/waybackurls.txt | gf ssti >> xyz.com/ssti_URL.txt and so on.....
  
  ---
  
  ### Dalfox part:
  #### At the end of the script I've added a Dlafox command: dalfox -b abc.xss.ht file xyz.com/xss_URL.txt | notify -provider telegram --silent
  #### Dalfox is a scanner for XSS, Open redirect, etc. So It will take xss_URL.txt from xyz.com/xss-URL.txt to perform scan.
  
  #### you can also use Sqlmap for sqli_URL.txt by adding command: sqlmap -m $i/sqli_URL.txt --batch --random-agent | notify -provider telegram --silent 
  
  ### But I'll suggest not using automation too much that's why I am using only Dalfox (sometimes it gives an accurate result), then visit all sorted URL files manually.
  
  ---
  
  ### Notify part:
  #### I configuerd notify beacuse I use Dalfox. I get updates on my telegram like:
  
  ![bs1](https://user-images.githubusercontent.com/82728673/150818462-a32d0d98-8a5f-445d-86ac-dde7e35685ce.png)
  
  ![bs2](https://user-images.githubusercontent.com/82728673/150818519-842d394a-37e6-4f2d-9276-6f066ef4e072.png)
  
  #### If you are using Dalfox then I'll suggest you use Notify for updates.
  #### If you don't want to use Notify then simply remove the line " notify -provider telegram --silent " from the script.
  
  #### This is simple automation script that will help you during your recon process.
  #### I am beginner in this field. Feedback, any changes are highly appreciated!
