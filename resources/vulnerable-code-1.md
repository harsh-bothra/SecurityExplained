### SecurityExplained S-12: Vulnerable Code Snippet - 1


#### Vulnerable Code: 

![Vulnerable Code](../media/code-1.png)


#### Solution: 
The above code is vulnerable to cross-site scripting attacks due to improper filtration! The encoding is missing a single quote (') and it is possible to execute an XSS with payloads such as: '+alert(1)+'.

##### Code Credits: OWASP Secure Coding Dojo