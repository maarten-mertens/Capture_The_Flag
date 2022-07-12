# Bandit Level 10 → Level 11
> ## Level Goal
>
>The password for the next level is stored in the file data.txt, which contains base64 encoded data
> ## Commands you may need to solve this level
>
> grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd
> ## Helpful Reading Material
>
>    Base64 on Wikipedia


## Flag

```bash
IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
```

## Terminal Output

```bash
bandit10@bandit:~$ cat data.txt 
VGhlIHBhc3N3b3JkIGlzIElGdWt3S0dzRlc4TU9xM0lSRnFyeEUxaHhUTkViVVBSCg==

bandit10@bandit:~$ cat data.txt | base64 -d
The password is IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR

```

***