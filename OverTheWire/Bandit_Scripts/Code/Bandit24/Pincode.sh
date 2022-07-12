#!/bin/sh
bandit24="UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ"
pin = ""
i=0
j=0
k=0
l=0

until (i -gt 10)
do
    until (j -gt 10)
    do
        until (k -gt 10)
        do
            until (l -gt 10)
            do
                pin=$i$j$k$l
                passcode = $bandit24 \n $pin
                echo pascode
                #nc localhost 300002 $passcode
                ((m++))
            done
            ((k++))
        done
        ((j++))
    done
    ((i++))
done

