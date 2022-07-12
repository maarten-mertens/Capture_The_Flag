
# Bandit Level 23 → Level 24
> ## Level Goal
> 
> A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.
>
>NOTE: This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!
>
>NOTE 2: Keep in mind that your shell script is removed once executed, so >you may want to keep a copy around…
> ## Commands you may need to solve this level
>
> cron, crontab, crontab(5) (use “man 5 crontab” to access this)

## Solution

```

```

## Terminal Output

shel script aanmaken in de map var/spool/bandit24
script bastand bandit_passwd laten uitlezen en laten wegschrijven in de home dir.

```bash
bandit23@bandit:/etc/cron.d$ cat cronjob_bandit24
@reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
* * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null

bandit23@bandit:/etc/cron.d$ cat ../../usr/bin/cronjob_bandit24.sh 
#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname
echo "Executing and deleting all scripts in /var/spool/$myname:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        owner="$(stat --format "%U" ./$i)"
        if [ "${owner}" = "bandit23" ]; then
            timeout -s 9 60 ./$i
        fi
        rm -f ./$i
    fi
done



bandit23@bandit:/usr/bin$ ls -l cronjob_bandit24.sh 
-rwxr-x--- 1 bandit24 bandit23 376 May 14  2020 cronjob_bandit24.sh

bandit23@bandit:/$ cd tmp/
bandit23@bandit:/tmp$ mkdir hand
bandit23@bandit:/tmp$ chmod 777 hand
bandit23@bandit:/tmp$ cd ..
bandit23@bandit:/$ cd /var/spool
bandit23@bandit:/var/spool$ vi
bandit23@bandit:/var/spool$ cd bandit24/
bandit23@bandit:/var/spool/bandit24$ vi
bandit23@bandit:/var/spool/bandit24$ cat /tmp/hand/
cat: /tmp/hand/: Is a directory
bandit23@bandit:/var/spool/bandit24$ cat /tmp/hand/bandit24
cat: /tmp/hand/bandit24: No such file or directory
bandit23@bandit:/var/spool/bandit24$ cat /tmp/hand/bandit24.rxr
cat: /tmp/hand/bandit24.rxr: No such file or directory
bandit23@bandit:/var/spool/bandit24$ cat /tmp/hand/bandit24.txt
cat: /tmp/hand/bandit24.txt: No such file or directory
bandit23@bandit:/var/spool/bandit24$ cd /
bandit23@bandit:/$ cd tmp/
bandit23@bandit:/tmp$ cd hand
bandit23@bandit:/tmp/hand$ ls
bandit23@bandit:/tmp/hand$ ls
bandit23@bandit:/tmp/hand$ vi
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ chmod 777 bandit24_hand.sh 
bandit23@bandit:/tmp/hand$ cp bandit24_hand.sh /var/spool/bandit24
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ ls
bandit24_hand.sh
bandit23@bandit:/tmp/hand$ cat bandit24_hand.sh 
#!/bin/sh
cat /etc/bandit_pass/bandit24 > /tmp/hand/bandit24


bandit23@bandit:/tmp/hand$ ls
bandit24  bandit24_hand.sh
bandit23@bandit:/tmp/hand$ cat bandit24
UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

```

