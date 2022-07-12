
# Bandit Level 14 → Level 15
> ## Level Goal
>
> The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.
> # Commands you may need to solve this level
>
>ssh, telnet, nc, openssl, s_client, nmap
> # Helpful Reading Material
>
>    How the Internet works in 5 minutes (YouTube) (Not completely accurate, but good enough for beginners)
    IP Addresses
    IP Address on Wikipedia
    Localhost on Wikipedia
    Ports
    Port (computer networking) on Wikipedia


## Flag

```
BfMYroe26WYalil77FoDi9qh59eK5xNr
```

## Terminal Output

```
bandit14@bandit:~$ nmap localhost

Starting Nmap 7.40 ( https://nmap.org ) at 2021-08-14 16:02 CEST
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00023s latency).
Not shown: 997 closed ports
PORT      STATE SERVICE
22/tcp    open  ssh
113/tcp   open  ident
30000/tcp open  ndmps

Nmap done: 1 IP address (1 host up) scanned in 0.10 seconds

bandit14@bandit:~$ telnet localhost 30000
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
Correct!
BfMYroe26WYalil77FoDi9qh59eK5xNr

Connection closed by foreign host.
```

***