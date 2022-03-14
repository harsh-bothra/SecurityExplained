### SecurityExplained S-72: Vulnerable Code Snippet - 51

#### Vulnerable Code: 

![Vulnerable Code](../media/code-51.png)


#### Solution: 

This code is vulnerable to SQL Injection attacks. 
User-provided data, such as URL parameters, should always be considered untrusted and tainted. Constructing SQL queries directly from tainted data enables attackers to inject specially crafted values that change the initial meaning of the query itself.  Successful database query injection attacks can read, modify, or delete sensitive information from the database and sometimes even shut it down or execute arbitrary operating system commands. The solution is to use prepared statements and to bind variables to SQL query parameters with dedicated methods like bindParam, which ensures that user-provided data will be properly escaped.

Another solution is to validate every parameter used to build the query. This can be achieved by transforming string values to primitive types or by validating them against a white list of accepted values.

Reference: https://rules.sonarsource.com/php/type/Vulnerability/RSPEC-3649

Twitter Thread: https://twitter.com/harshbothra_/status/1502806574368129024

##### Code Credits: @SonarSource
 