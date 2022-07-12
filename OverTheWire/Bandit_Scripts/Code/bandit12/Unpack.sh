#!/bin/bash
filename=${1?Error: no file-name given}
printf "%s\n" "$filename"
archtype=$(file --mime-type -b "$filename")
printf "%s\n" "$archtype"

case "$archtype" in

    "application/gzip")
     mv "$filename" "$filename.gz"
     gzip -d "$filename.gz" 
     ;;

    "application/x-bzip2")
    mv "$filename" "$filename.bz2"
    bzip2 -d "$filename.bz2"
     ;;
     
    "application/x-tar")
    mv "$filename" "$filename.tar"
    tar -xf "$filename.tar"
     ;;

    *)
        cat "$filename"
     ;;
esac