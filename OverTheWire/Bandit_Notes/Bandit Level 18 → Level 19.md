# Bandit Level 18 → Level 19
> ## Level Goal
>
> The password for the next level is stored in a file readme in the homedirectory. Unfortunately, someone has modified .bashrc to log you out when you log in with SSH.
> ## Commands you may need to solve this level
> 
> ssh, ls, cat

## Flag

```bash
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
```

## Terminal Output

```bash
$ sshpass -f ./passwords/bandit18 ssh bandit18@bandit.labs.overthewire.org -p 2220 "ls"  
This is a OverTheWire game server. More information on http://www.overthewire.org/wargames

readme

$ sshpass -f ./passwords/bandit18 ssh bandit18@bandit.labs.overthewire.org -p 2220 "cat readme"
This is a OverTheWire game server. More information on http://www.overthewire.org/wargames

IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x

```

***