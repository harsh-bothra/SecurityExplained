### SecurityExplained S-6: Bypassing Biometrics in iOS with Objection

```
Many applications provide a functionality to enable touch/face ID as an added layer of protection to the application. However, if the attack have "physical access" to the device, it is possible to bypass this restriction and gain access to the application. There are multiple methods to bypass the checks, however, one of the simplest method is to use "Objection".

Before, performing the attack ensure that the device has frida up and running. Also, the objection must be installed on the attacker system.

# How to perform the attack:

1. Run the following command: objection --gadget <package>
2. In the objection run following command: ios ui biometrics_bypass
3. Now, give the wrong "biometric", the application says it is wrong, now simply click on "Cancel" to observe that the biometrics are bypassed.


# How this works:

- LAContext is a class that is responsible for the local authentication. In this, there is a evaluatePolicy method that is responsible to present a dialog and authenticate the user. When the command mentioned in the "Step-2" is executed, objection creates a hook on "-[LAContext evaluatePolicy:localizedReason:reply:]" and manipulates the boolean value from "False" to "True".

A detailed explanation can be found here: https://github.com/sensepost/objection/wiki/Understanding-the-iOS-Biometrics-Bypass

```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1479127074132529155?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
