#!/bin/bash
NUMBER=${1?Error: no file-number given}
sshpass -f ./passwords/bandit$NUMBER ssh bandit$NUMBER@bandit.labs.overthewire.org -p 2220