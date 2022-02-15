### SecurityExplained S-46: Vulnerable Code Snippet - 33

#### Vulnerable Code: 

![Vulnerable Code](../media/code-33.jpg)


#### Solution: 

This code is vulnerable to RCE via SSTI due to improper filtration. Additionally, the replace() function is case sensitive and the filters can be bypassed by case juggling to execute an XSS attack as well.  

Twitter Thread: https://twitter.com/harshbothra_/status/1493412245404938241

##### Code Credits: @0xryuk
 