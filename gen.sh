#!/bin/bash

watch=false
while [ -n "$1" ]
do
    case "$1" in
        -w) watch=true ;;
        *) echo -e "\033[36m $1\033[0m is not an option;" && exit;;
    esac
    shift
done

if $watch; then
    flutter pub run build_runner watch
else
    flutter pub run build_runner build --delete-conflicting-outputs
fi