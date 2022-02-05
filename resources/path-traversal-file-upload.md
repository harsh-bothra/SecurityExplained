### SecurityExplained S-9: Path Traversal via File Upload

```
File upload is a very interesting functionality and there are multiple attacks that are possible such as code execution, cross-site scripting and one of the functionality is "File Overwrite using Path Traversal"

Whenever you find a file upload functionality that stores the files on the backend instead of just processing the data for one time use, you may try following steps:

1. Capture a file upload request.
2. In the filename parameter, change filename to "../../filename" and forward the request.
3. See, if the file is getting stored outside the expected directory, if 'yes', it is an issue.
4. Now, attempt to overwrite a system file and check if it is possible to overwrite the system file.

Note: It is not recommended to overwrite a critical system file on the production system, make sure you take necessary permissions from the client before you perform such escalations.

```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1480200369732931584?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
