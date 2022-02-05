### SecurityExplained S-14: Exploiting XXE in JSON Endpoints

```
XXE a.k.a XML External Entities is a vulnerability that is usally found in endpoints that process XML data. This attack happens when a misconfigured or weekly configured XML parser processed the external entity reference from a XML Input.

However, if an application is using JSON as content-type in request processing, in a usual assumption, we often do not check for the XXE attack but in certain scenarios, it might be possible that the application supports XML parsing along with JSON but that is not visible via request structure. Hence, we should always check for XXE in JSON endpoints.

# To perform XXE in JSON Endpoints, One can try below steps:

1. Capture a JSON request with Burp Suite.
2. Convert the content-type to XML using "Content-Type Convertor" Burp Extension.
3. Process the Request and if request is processed successfully, it means that the XML parsing is supported.
4. Now, attempt to exploit XXE

Interesting Read: https://www.netspi.com/blog/technical/web-application-penetration-testing/playing-content-type-xxe-json-endpoints/
More About XXE: https://owasp.org/www-community/vulnerabilities/XML_External_Entity_(XXE)_Processing

```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1481974615409041414?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
