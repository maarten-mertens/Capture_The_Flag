# Bandit Level 19 → Level 20
> ## Level Goal
>
> To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.
> ## Helpful Reading Material
>
>    setuid on Wikipedia

## Flag

```bash
GbKksEFF4yrVs6il55v6gwY5aVje5f0j
```

## Terminal Output

```bash
bandit19@bandit:~$ stat bandit20-do 
  File: bandit20-do
  Size: 7296      	Blocks: 16         IO Block: 4096   regular file
Device: fb01h/64257d	Inode: 145188      Links: 1
Access: (4750/-rwsr-x---)  Uid: (11020/bandit20)   Gid: (11019/bandit19)
Access: 2021-08-14 11:01:18.641288006 +0200
Modify: 2020-05-07 20:14:40.168727240 +0200
Change: 2020-05-07 20:14:40.168727240 +0200
 Birth: -

bandit19@bandit:~$ ./bandit20-do 
Run a command as another user.
  Example: ./bandit20-do id
  
bandit19@bandit:~$ ./bandit20-do whoami
bandit20


bandit19@bandit:~$ ./bandit20-do cat ../../../etc/bandit_pass/bandit20
GbKksEFF4yrVs6il55v6gwY5aVje5f0j

```

***