# Bandit Level 1 → Level 2
> ## Level Goal
>The password for the next level is stored in a file called - located in the home directory
> ## Commands you may need to solve this level
>
> ls, cd, cat, file, du, find
> ## Helpful Reading Material
> Google Search for “dashed filename”
> Advanced Bash-scripting Guide - Chapter 3 - Special Characters



## Terminal Output

```bash
bandit1@bandit:~$ cat < -
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9

bandit1@bandit:~$ cat ./-
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
```

## Flag

```bash
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
```

## Sources

[https://www.webservertalk.com/dashed-filename](https://www.webservertalk.com/dashed-filename)