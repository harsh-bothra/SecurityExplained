### SecurityExplained S-17: Vulnerable Code Snippet - 5

#### Vulnerable Code:

![Vulnerable Code](../media/code-5.jpg)

#### Solution:

The issue in this code snippet is that the files are stored without any extension. The Apache does not attach a Content-Type header in the response. Modern browsers will interpret these files as HTML which may lead to an attack such as Stored Cross-Site Scripting.

##### Code Credits: SonarSource

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1483124633373409281?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
