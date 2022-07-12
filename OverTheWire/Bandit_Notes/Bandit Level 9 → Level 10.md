# Bandit Level 9 → Level 10
> ## Level Goal
>
>The password for the next level is stored in the file data.txt in one of the few human-readable >strings, preceded by several ‘=’ characters.
> ## Commands you may need to solve this level
>
> grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd


## Flag

```Bash
truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
```

## Terminal Output

```bash
bandit9@bandit:~$ cat data.txt
�L�lω;��ßOܛ��ǤX��NdT$��x7��@D@�o��+D��B��M֢�Z/,_��w��#�5���
                                                          Ў�e�&�-��Ϣ�6Q8��J�%fa�
�np�6l
|c���WW
...

bandit9@bandit:~$ strings data.txt | grep "==="
========== the*2i4
========== password
Z)========== is
&========== truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
```



***