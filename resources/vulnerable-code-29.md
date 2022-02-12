### SecurityExplained S-42: Vulnerable Code Snippet - 29

#### Vulnerable Code: 

![Vulnerable Code](../media/code-29.jpg)


#### Solution: 


This code is vulnerable to cross-site scripting (XSS) as an attacker can perform successful attack by supplying malicious payload in the user_comment parameter. With some interesting response from the community, it looks like the code is also vulnerable to IDOR.



Twitter Thread: https://twitter.com/harshbothra_/status/1491972760343621632

##### Code Credits: @ChetanyaKunndra
 