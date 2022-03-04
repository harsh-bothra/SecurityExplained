## SecurityExplained S-63

### CWE-787: Improper Input Validation

The product/program does not validate or validate poorly or input that can disrupt a program's control flow or data flow. When software fails to properly validate input, an attacker can construct it in a way that the rest of the application does not expect. As a result, components of the system may receive unwanted input, resulting in a change in control flow or even arbitrary code execution. The flaw appears during the Architecture and Design, as well as the implementation stages. 

#### It allows to:  
- Cause the Program to Stop 
- Set Arbitrary Command Execution 
- Cause Excessive Expenditure of Resources 
- Read and Compromise Personal Information 

#### Input validation can be applied to: 
1. Raw Data - Strings, Numbers, Parameters, File Contents, etc. 
2. Metadata - Information about the raw data, such as headers or size 


#### Upon entering the code, many properties of raw data or metadata may need to be checked, such as:
- Size, length, frequency, price, rate, number of operations, duration, and so on (all defined quantities). 
- Incorporate symbolic keys or other items into hash tables, associative arrays, etc. 
- Individual data items, raw data and metadata, references, and so on must all be consistent. 
- Implied or derived quantities, such as the real file size rather than defined file size. 
- More complicated data structures like indices, offsets, or placements.

It's important to keep in mind that "input validation" might have a variety of meanings depending upon whether you ask or whatever classification scheme you use. When referring or mapping to this CWE entry, take caution.

#### Possible Attacks 
+ SQL Injection
+ Cross-Site Scripting (XSS)
+ Command Injection
+ Arbitrary Code Execution
+ Application-Level DOS Attack 
+ and other similar attacks

#### Mitigations

1. Use a framework like Struts or the OWASP ESAPI Validation API to validate input. It's important to remember that adopting a framework doesn't solve all input validation issues; be aware of any flaws in the framework itself. 
2. Parameters or arguments, cookies, anything read from the network, environment variables, reverse DNS lookups, query results, request headers, URL components, e-mail, files, filenames, databases, and any external systems that provide data to the application are all potential areas where untrusted inputs can enter your software. Keep in mind that API calls can be used to obtain such inputs


#### A more detailed information about this vulnerability can be found here: https://cwe.mitre.org/data/definitions/20.html



[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1499723526948855808)
