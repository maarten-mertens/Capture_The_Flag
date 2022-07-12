#!/bin/bash                                                                                                                                                                                                          
bandit24="UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ"
declare -a pincode_array
i=0000
passcode=0

for i in {0000..9999}
do
passcode="$bandit24 $i"
echo "$bandit24 $i"
pincode_array+=$passcode
i=$(($i+1))
done
