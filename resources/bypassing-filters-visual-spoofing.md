### SecurityExplained S-8: Bypassing Filters(and more) with Visual Spoofing

```
Visual Spoofing attacks utilizes the characters from different languages that are visually similar. For example: These all letters [AΑ А ᗅ ᗋ ᴀ Ａ] looks like 'A' of english, visually, however, the computer program processes these characters with their exact meanings.

This is where it became an interesting tool to abuse the filters and regular expression based checks & bypass them.


There are multiple attack scenarios using Visual Spoofing/Homographic Attacks:

1. Abusing the Filters & Bypassing Them

- One can attempt to bypass filters for any attack category such as cross-site scripting and may have a successful execution.

Ex: For example: <> tags are filters, you can try ‹› instead. (Looks visually similar but are different).


2. Domain Spoofing

- Highly reliable while performing a social engineering attack. The phishing emails, websites, etc looks legit and genuine.

3. Business Logic Abuse
- One can attempt to perform business logic abuse, break the parsing logics and even attempt to perform account takeovers.

4. IDN Homograph Attacks

5. And other endless misc. things one can think of (Being creative is always a plus)


Homoglyph Attack Generator: https://www.irongeek.com/homoglyph-attack-generator.php

Interesting Resources: https://websec.github.io/unicode-security-guide/visual-spoofing/

```

[Follow Twitter Thread](https://twitter.com/harshbothra_/status/1479813683114958852?s=20&t=DGEwqEwXwFbWH0VXkOKVsQ)
