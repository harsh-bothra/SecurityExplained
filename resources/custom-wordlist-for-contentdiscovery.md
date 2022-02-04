# SecurityExplained S-3: Creating Custom Wordlist for Content Discovery

```
Content Discovery is an essential part of the recon processes. While many rely upon the tools and their default wordlist to fuzz for the juicy files and directories, they might miss some interesting endpoints. 
Here are some tips on choosing and creating custom wordlists for Content Discovery: 

1. Always fuzz the application with the "Programming Language" specific wordlists. For Example, if the application is running "PHP", make sure to use the wordlist that is more inclusive of PHP endpoints such as: https://github.com/danielmiessler/SecLists/blob/master/Discovery/Web-Content/PHP.fuzz.txt
2. Make sure to fuzz based on the "Server/Technology". For example, if the application is running "Apache", fuzzing with an apache specific wordlist is going to be helpful: https://github.com/danielmiessler/SecLists/blob/master/Discovery/Web-Content/Apache.fuzz.txt
3. Create your own custom wordlist by combining multiple lists that are inclusive of the most commonly found technologies, servers, languages and commonly exposed files and directories. You can do this by filtering and appending multiple wordlists that are already available. 
4. Now, One of the important thing about a successful content discovery is to "Create a Custom Target Specific Wordlist" by scrapping JS files and other sources. Since, the words generated are target specific, sometimes you may find files and directories present and accessible with these names. 
    a. There are multiple tools available to generate wordlists such as "Crunch" but these are more usuful to generate wordlists for Brute-forcing passwords. 
    b. There is a Burp Extension "Wordlist-Extractor" that attempts to extract unique words for the brute-forcing (but I did not find it much useful). 
    c. There is a tool named "CWFF" (https://github.com/D4Vinci/CWFF) which is quite interesting and looks at the various resources for generating the wordlist for content discovery. 
    d. There is a tool by @m4ll0k, "GetJSWords" (https://github.com/m4ll0k/BBTz/blob/master/getjswords.py) that crawls through JS files and helps generating a wordlist using it. 
    e. Also, there is another tools named "JSFScan" (https://github.com/KathanP19/JSFScan.sh) that is quite useful for JS enumeration and also used to generate wordlists. However, this tool uses the same "GetJSWords" script for scraping the wordlists.


Let's see how "CWFF (Custom Wordlist For Fuzzing)" tool works in action: 

1. Clone the tool from it's Github repository and install the required dependencies with "pip3 -r requirements.txt" command. 
2. Now, simply run the tool: "python3 cwff.py <domain>" and it will start scraping. 
3. Results will be stored on a directory with the supplied domain name for later access. 
4. There are multiple flags and options available that can be found in the help documents: "python3 cwff.py --help"
```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1477971761907978241?s=20&t=QR8LCZPmGCrSu2SuCUBCgQ)
