# HTB: INVITE CHALLENGE

Datum: 2021-03-02
Door: MERTEMAA

Om toegang te verkrijgen tot https://www.hackthebox.eu moet je "invite challenge" voltooien.

Zodra je klikt op de knop "Join Now" wordt onderstaand formulier getoond. 
Om je te kunnen registreren moet je een code invoeren.

![Login Screen](https://github.com/mertemaa/CTF/blob/25e2d3809e5454c7b81422dc00f8f5546e8a22cf/HackTheBox/Invite/InviteHeader.png)

Bij het raadplegen van de broncode bestaat er blijkbaar een inviteapi.js script.

![Broncode](https://github.com/mertemaa/CTF/blob/b7c10634b0b7f2e9408ddff5748464602239e335/HackTheBox/Invite/SourceCode.png)

Blijkbaar bestaat er een functie "makeInviteCode"

```javascript
//This javascript code looks strange...is it obfuscated???

eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('0 3(){$.4({5:"6",7:"8",9:\'/b/c/d/e/f\',g:0(a){1.2(a)},h:0(a){1.2(a)}})}',18,18,'function|console|log|makeInviteCode|ajax|type|POST|dataType|json|url||api|invite|how|to|generate|success|error'.split('|'),0,{}))
```

Als je deze functie oproept via de console van de browser krijgen we een versleutelde waarde terug.

![MakeInviteCode](https://github.com/mertemaa/CTF/blob/0ec84a51a9bf9d46d882341883ef80803bdd940a/HackTheBox/Invite/MakeInviteCodeResponse.png)

We kunnen deze waarde decrypten via Base64 en krijgen we de boodschap "In order to generate the invite code, make a POST request to /api/invite/generate"

```bash
┌──(kali㉿kali)-[~]
└─$ echo "SW4gb3JkZXIgdG8gZ2VuZXJhdGUgdGhlIGludml0ZSBjb2RlLCBtYWtlIGEgUE9TVCByZXF1ZXN0IHRvIC9hcGkvaW52aXRlL2dlbmVyYXRl" | base64 --decode
In order to generate the invite code, make a POST request to /api/invite/generate
```

Met curl kunnen we een post request uitvoeren

```bash
┌──(kali㉿kali)-[~]
└─$ curl -X POST "https://www.hackthebox.eu/api/invite/generate"                                                                                                                 
{"success":1,"data":{"code":"WERUWUgtV1FXRlUtT1lUVVItV0tER04tRUxIT1I=","format":"encoded"},"0":200}
```

Nadat we de versleutelde waren decoderen krijgen we de invite code. Je kan je account registreren na invoer van deze code.

```bash
┌──(kali㉿kali)-[~]
└─$ echo "WERUWUgtV1FXRlUtT1lUVVItV0tER04tRUxIT1I=" | base64 --decode                                                                    
XDTYH-WQWFU-OYTUR-WKDGN-ELHOR
```

![Solved](https://github.com/mertemaa/CTF/blob/0ec84a51a9bf9d46d882341883ef80803bdd940a/HackTheBox/Invite/InviteSolved.png)
