# Bandit Level 17 → Level 18
> ## Level Goal
>
> There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new
>
> NOTE: if you have solved this level and see ‘Byebye!’ when trying to log into bandit18, this is related to the next level, bandit19
> ## Commands you may need to solve this level
>
> cat, grep, ls, diff


## Flag

```
kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
```

## Terminal Output

bewaar de RSA key in een bestand bandit17.private.

```
$ ssh -i passwords/bandit17.private bandit17@bandit.labs.overthewire.org -p2220
This is a OverTheWire game server. More information on http://www.overthewire.org/wargames

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0644 for 'passwords/bandit17.private' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key "passwords/bandit17.private": bad permissions
bandit17@bandit.labs.overthewire.org's password: 
                                                                             
$ chmod 600 passwords/bandit17.private

$ ssh -i passwords/bandit17.private bandit17@bandit.labs.overthewire.org -p2220
This is a OverTheWire game server. More information on http://www.overthewire.org/wargames
...
Enjoy your stay!

bandit17@bandit:~$ ls
passwords.new  passwords.old

bandit17@bandit:~$ diff passwords.old passwords.new 
42c42
< w0Yfolrc5bwjS4qw5mq1nnQi6mF03bii
---
> kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd


```

***