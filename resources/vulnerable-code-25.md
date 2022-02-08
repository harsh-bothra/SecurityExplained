### SecurityExplained S-38: Vulnerable Code Snippet - 25

#### Vulnerable Code: 

![Vulnerable Code](../media/code-25.jpg)


#### Solution: 

The above code is vulnerable to Remote Code Execution. The code implements a black-list based filter on line-15 which can be bypassed if the payload meets the following requirements:
* Is inside a quote to not take advantage of the bash CLI [Ex: "$(whoami)" ]
* Do not use any of the blacklist chars inside the $(...).
* Execute a system command of any kind that is proven to execute.

It is recommended to use a whitelist instead and also not use system cmd calls to make a task instead use a built-in function and create an own function that does the same without using os.system(ls).


Twitter Thread: https://twitter.com/harshbothra_/status/1490513142375333889

##### Code Credits: @Brumens2
