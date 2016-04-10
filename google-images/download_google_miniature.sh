#! /bin/bash
echo "USAGE: ./sh 1 some_image"
count=${1}
query="$@"
imagelink=$(wget --user-agent 'Mozilla/5.0' -qO - "www.google.be/search?q=${query}\&tbm=isch" | sed 's/</\n</g' | grep '<img' | head -n"$count" | tail -n1 | sed 's/.*src="\([^"]*\)".*/\1/')
wget $imagelink