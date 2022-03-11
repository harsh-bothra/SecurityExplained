### SecurityExplained S-70: Vulnerable Code Snippet - 49

#### Vulnerable Code: 

![Vulnerable Code](../media/code-49.png)


#### Solution: 

This code is vulnerable to LDAP Injection. User-provided data such as URL parameters should always be considered untrusted and tainted. 

Constructing LDAP names or search filters directly from tainted data enables attackers to inject specially crafted values that change the initial meaning of the name or filter itself. 

Reference: https://rules.sonarsource.com/php/type/Vulnerability/RSPEC-2078

Twitter Thread: https://twitter.com/harshbothra_/status/1502115860084785152

##### Code Credits: @SonarSource
 