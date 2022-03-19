### SecurityExplained S-78: Vulnerable Code Snippet - 57

#### Vulnerable Code: 

![Vulnerable Code](../media/code-57.png)


#### Solution: 

This code is vulnerable to Unrestricted File Upload Attack.

These minimum restrictions should be applied when handling file uploads:

the file upload folder to restrict untrusted files to a specific folder.
the file extension of the uploaded file to prevent remote code execution.
Also the size of the uploaded file should be limited to prevent denial of service attacks. 

Reference: https://rules.sonarsource.com/javascript/type/Vulnerability/RSPEC-2598

Twitter Thread: https://twitter.com/harshbothra_/status/1504999863632637959

##### Code Credits: @SonarSource
 