
# Bandit Level 15 → Level 16
> ## Level Goal
>
>The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL encryption.
>
>Helpful note: Getting “HEARTBEATING” and “Read R BLOCK”? Use -ign_eof and read the “CONNECTED COMMANDS” section in the manpage. Next to ‘R’ and ‘Q’, the ‘B’ command also works in this version of that command…
> ## Commands you may need to solve this level
>
> ssh, telnet, nc, openssl, s_client, nmap
> ## Helpful Reading Material
>
>    Secure Socket Layer/Transport Layer Security on Wikipedia
>    OpenSSL Cookbook - Testing with OpenSSL


## Flag

```
cluFn7wTiGryunymYOu4RcffSxQluehd
```

## Terminal Output

```
bandit14@bandit:~$ openssl s_client -crlf -connect localhost:30001
CONNECTED(00000003)
depth=0 CN = localhost
verify error:num=18:self signed certificate
verify return:1
depth=0 CN = localhost
verify return:1
---
Certificate chain
 0 s:/CN=localhost
   i:/CN=localhost
---
Server certificate
-----BEGIN CERTIFICATE-----
MIICBjCCAW+gAwIBAgIEHxhZ+zANBgkqhkiG9w0BAQUFADAUMRIwEAYDVQQDDAls
b2NhbGhvc3QwHhcNMjEwODA1MjEyMjEzWhcNMjIwODA1MjEyMjEzWjAUMRIwEAYD
VQQDDAlsb2NhbGhvc3QwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBALqNmx6R
csRsPgzRcRsq5oQ4BC9AT/Yu473WbK4SRjHOWwuA4Oqk9w8SLKYZ39FrDEnXSZJw
xqKPR0AH72+l7Itv7X1H07VbeMTQoJVm6NsJm3cuyyxjRwfaIOUFsRtQQyvQlmw7
3CgTbd3wEk1CD+6jlksJj801Vd0uvZh1VVERAgMBAAGjZTBjMBQGA1UdEQQNMAuC
CWxvY2FsaG9zdDBLBglghkgBhvhCAQ0EPhY8QXV0b21hdGljYWxseSBnZW5lcmF0
ZWQgYnkgTmNhdC4gU2VlIGh0dHBzOi8vbm1hcC5vcmcvbmNhdC8uMA0GCSqGSIb3
DQEBBQUAA4GBADjhbe3bTnDWsS4xt8FFg7PJIqNAxF6QjP+7xzJ4yMvWtPP6tVXo
F7SNI52juwH0nFDyM9KOrM/AknWqCYF+yfz6bLD7MaKZ+Kg3DiLaoVJOrVg6Y02+
0vq1rLsqGko5wamCFamx7X9CtFsV0WQjZdA53Na/VwehtlFpf/p20VAi
-----END CERTIFICATE-----
subject=/CN=localhost
issuer=/CN=localhost
---
No client certificate CA names sent
Peer signing digest: SHA512
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 1019 bytes and written 269 bytes
Verification error: self signed certificate
---
New, TLSv1.2, Cipher is ECDHE-RSA-AES256-GCM-SHA384
Server public key is 1024 bit
Secure Renegotiation IS supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
SSL-Session:
    Protocol  : TLSv1.2
    Cipher    : ECDHE-RSA-AES256-GCM-SHA384
    Session-ID: 15F90A64BFCF79732088697588ABF24BE3502BFF3E83CB23A55A67CB7D193875
    Session-ID-ctx: 
    Master-Key: 22E0C5F05495421F8DCED6346727492AC4879F993629E6D2004DA6A7866D124CBF3D67FCDB06F629A175058E4115CEA1
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 7200 (seconds)
    TLS session ticket:
    0000 - 3a a9 fe 3b 12 a1 ed 2b-8d a6 cf aa 23 c9 12 88   :..;...+....#...
    0010 - 1a 2e 11 26 c6 cd fb 48-46 23 61 89 0c b9 94 5e   ...&...HF#a....^
    0020 - b7 84 bc df f7 1b b6 e6-08 1a 1a aa f1 9a d4 01   ................
    0030 - d3 d9 b1 ee fa bf 1b c1-a8 ea 93 67 2d 51 e3 73   ...........g-Q.s
    0040 - e5 80 11 73 2f 8d d7 2a-96 77 96 cb 9d 0c 61 00   ...s/..*.w....a.
    0050 - 99 cb ac 79 1d 93 4f 89-16 0a e8 98 30 34 fb e4   ...y..O.....04..
    0060 - d2 77 fa ca f2 88 34 6f-46 af 06 e3 df fd c5 43   .w....4oF......C
    0070 - a5 92 41 81 70 40 c5 60-4e 80 6a 04 c9 54 5c 8c   ..A.p@.`N.j..T\.
    0080 - 42 34 a4 47 66 a0 cf 9f-2b 69 1e 3b ee 98 fd c3   B4.Gf...+i.;....
    0090 - 7a 61 3d 68 34 1a a1 70-27 79 bd 74 6b 79 00 92   za=h4..p'y.tky..

    Start Time: 1628950522
    Timeout   : 7200 (sec)
    Verify return code: 18 (self signed certificate)
    Extended master secret: yes
---
BfMYroe26WYalil77FoDi9qh59eK5xNr
Correct!
cluFn7wTiGryunymYOu4RcffSxQluehd

closed

```

***