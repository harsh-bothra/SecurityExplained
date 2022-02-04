### SecurityExplained S-10: Attacking Zip Upload Functionality with ZipSlip Attack

```
As mentioned in the last SecurityExplained post, file upload is a big attack vector & one of my favourite functionality to perform attack on. When an application allows uploading zip, stores it on the back and to process the content, tried to unzip it, it is an interesting attack vector for "Zip Slip" Attack.

Let's understand what is a ZipSlip Attack:

As per the synk.io's: Zip Slip is a widespread arbitrary file overwrite critical vulnerability, which typically results in remote command execution. The vulnerability is exploited using a specially crafted archive that holds directory traversal filenames (e.g. ../../evil.sh). The Zip Slip vulnerability can affect numerous archive formats, including tar, jar, war, cpio, apk, rar and 7z.


# How to Exploit?

- Using the following tool, create a malicious zip file: https://github.com/ptoomey3/evilarc
- Upload the malicious zip file using the zip upload functionality
- If accepted and uploaded successfully, try to check for the endpoints that reflects the results of the uploaded file or try to check for any unintended behavior from the server/application for further exploitation.


# Interesting Research Read:
- https://snyk.io/research/zip-slip-vulnerability
- https://github.com/snyk/zip-slip-vulnerability


```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1480567796098420737?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
