### SecurityExplained S-7: My Methodology to Test Premium Features

```
Premium Features are not widely tested by crowd due to the involvement of a purchase factor. However, the person who often invest some amount to purchase premium account & perform testing for premium feature abuse is less likely to go disappointed.

Below is my methodology to test for the Premium features:

[Without Purchase]
1. Fuzzing the API endpoints for find out the endpoints that are accessible to premium users.
2. Comparing the difference in the freemium vs premium accounts and creating a threat map of functionalities available in the premium account to make sure if it's really worth an investment.
3. Next, Checking the profile update functionality and if there is any "Response Parameters" such as "isSubscribed", trying to use mass assignment attack to gain premium features for free using the "Freemium Account".
4. Checking for the trial membership & trying to abuse the business logic to always re-issue the trial membership once finished (typically a 7 day membership is offered).
5. Performing enumeration/recon to find some API documents that may involve the API calls accessible to premium user.
6. Some applications use true-false request/response values to validate if a user is having access to premium features or not. Try using Burp's Match & Replace to see if you can replace these values whenever you browse the app & access the premium features.

[After Purchase]
1. Pay for a premium feature and cancel your subscription. If you get a refund but the feature is still usable, it's a monetary impact issue.
2. Always check cookies or local storage to see if any variable is checking if the user should have access to premium features or not.
3. Generating a site-map with the premium user and comparing it with the freemium user to find new endpoints.
4. Checking for privilege escalation attacks between these two users manually as well as using extensions such as Autorize.
5. Checking for payment gateway flows and payment tampering.

Feel free to add more techniques if you know some!
```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1479451102408065033?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
