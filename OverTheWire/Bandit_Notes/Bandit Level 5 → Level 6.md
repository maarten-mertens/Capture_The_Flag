
# Bandit Level 5 → Level 6
> ## Level Goal
>
>The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:
>
>human-readable
>1033 bytes in size
> not executable
>
> ## Commands you may need to solve this level
>
> ls, cd, cat, file, du, find


## Flag

```bash
DXjZPULLxYr17uwoI01bNLQbtFemEgo7
```

## Terminal Output

```bash
bandit5@bandit:~$ ls
inhere

bandit5@bandit:~$ find . -size 1033c
./inhere/maybehere07/.file2

bandit5@bandit:~$ find . -size 1033c | xargs file
./inhere/maybehere07/.file2: ASCII text, with very long lines

bandit5@bandit:~$ find . -size 1033c | xargs ls -all
-rw-r----- 1 root bandit5 1033 May  7  2020 ./inhere/maybehere07/.file2

bandit5@bandit:~$ find . -size 1033c | xargs cat
DXjZPULLxYr17uwoI01bNLQbtFemEgo7
```

***