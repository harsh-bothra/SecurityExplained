### SecurityExplained S-5: Bypassing Privileges & Other Restrictions with Mass Assignment Attacks.

```
As per OWASP's defination: Software frameworks sometime allow developers to automatically bind HTTP request parameters into program code variables or objects to make using that framework easier on developers. This can sometimes cause harm. Attackers can sometimes use this methodology to create new parameters that the developer never intended which in turn creates or overwrites new variable or objects in program code that was not intended. This is called a Mass Assignment vulnerability.

There are multiple attacks that can be executed by exploiting this vulnerability such as escalating privileges, bypassing business logic, manipulating payloads and bypassing client-side checks.

Testing for testing issue is quite easy, one of the quick example is to check for "Interesting Parameter" in the response that are original not a part of the request, add the parameter in the request with an attacker controlled value and perform the action. If the parameter is getting manipulated, the vulnerability exists.

[My testing methodology]

1. Suppose a multi-privilege application has profile change functionality.
2. With a non-admin account profile change request looks like this: `POST /myprofile ... ... username=harsh&email=h@h.com`
3. The response contains an additional parameter such as `isAdmin=False` that is not part of the original request from `Step-2`.
4. Now, simply add this `isAdmin` parameter to the request in `Step-2` with the value `True` and forward the request. Ex: `POST /myprofile ... ... username=harsh&email=h@h.com&isAdmin=True`
5. If the response reflects value of `isAdmin` as `True`, it implies that the application doesn't perform proper checks and the vulnerability exists.
6. To confirm, check if the user is updated to Admin User by performing the actions possible with an admin user.

- Similarly, this technique can be used to bypass multiple restrictions such as two-factor authentication, abuse business logic and other things. It is always a good idea to include the response parameters in the request and perform some checks.

OWASP CheatSheet series contains interesting information on this attack: https://cheatsheetseries.owasp.org/cheatsheets/Mass_Assignment_Cheat_Sheet.html

```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1478739664093675526?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
