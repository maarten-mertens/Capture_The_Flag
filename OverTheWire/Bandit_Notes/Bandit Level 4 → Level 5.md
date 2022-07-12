# Bandit Level 4 → Level 5
>## Level Goal
>
>The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is >messed up, try the “reset” command.
> ## Commands you may need to solve this level
>
>ls, cd, cat, file, du, find



## Flag

```bash
koReBOKuIDDepwhWk7jZC0RTdopnAYKh
```

## Terminal Output

```bash
bandit4@bandit:~/inhere$ find .
./-file01
./-file00
./-file06
./-file03
./-file05
./-file08
./-file04
./-file07
./-file02
./-file09

bandit4@bandit:~/inhere$ file ./-file01
./-file01: data
bandit4@bandit:~/inhere$ file ./-file02
./-file02: data
bandit4@bandit:~/inhere$ file ./-file03
./-file03: data
bandit4@bandit:~/inhere$ file ./-file04
./-file04: data
bandit4@bandit:~/inhere$ file ./-file05
./-file05: data
bandit4@bandit:~/inhere$ file ./-file06
./-file06: data
bandit4@bandit:~/inhere$ file ./-file07
./-file07: ASCII text
bandit4@bandit:~/inhere$ file ./-file08
./-file08: data
bandit4@bandit:~/inhere$ file ./-file09
./-file09: data

bandit4@bandit:~/inhere$ cat ./-file07
koReBOKuIDDepwhWk7jZC0RTdopnAYKh
```