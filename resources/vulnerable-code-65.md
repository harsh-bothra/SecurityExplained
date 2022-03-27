### SecurityExplained S-86: Vulnerable Code Snippet - 65

#### Vulnerable Code: 

![Vulnerable Code](../media/code-65.png)


#### Solution: 

This code is vulnerable to NoSQL Injection Attack. 

User-provided data such as URL parameters and POST body-content should always be considered untrusted and tainted.

Applications that perform NoSQL operations based on tainted data can be exploited similarly to regular SQL injection bugs. Depending on the code, the same risks exist as with SQL injections: The attacker aims to access sensitive information or compromise data integrity. Attacks may involve the injection of query operators, JavaScript code, or string operations.

This problem can be mitigated by using an Object Document Mapper (ODM) library or by validating user-supplied data based on its size or allowed characters.


Reference: https://rules.sonarsource.com/java/type/Vulnerability/RSPEC-5147

Twitter Thread: https://twitter.com/harshbothra_/status/1507857619532144646

##### Code Credits: @SonarSource
 