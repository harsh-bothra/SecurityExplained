### SecurityExplained S-31: Vulnerable Code Snippet - 19

#### Vulnerable Code:

![Vulnerable Code](../media/code-19.jpg)

#### Solution:

As per @SonarSource, The regex at line 7 is correct in itself as it checks for the right characters. The bug lies in the g flag; it makes the regex object retain the last match index and will continue after that index when .test() is called again. Attackers could still use quotes, and perform the SQL injection, by sending their request two times in a row: the second regex check will start after the quote.

##### Code Credits: SonarSource

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1488191330493014018?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
