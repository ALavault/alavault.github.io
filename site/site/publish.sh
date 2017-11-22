#! /bin/bash
# hugo site generation and publishing to ipfs

# check current directory
curdir=$(pwd -P)

if [ "$curdir" != "/home/util/site/site" ]; then
    echo "not in proper directory"
    exit
fi

# clean published version
rm -r /home/util/testIPFS/site
mkdir /home/util/testIPFS/site

# generate hugo site
hugo --destination /home/util/testIPFS/site

# add to ipfs
hash=$(ipfs add -r -q /home/util/testIPFS | tail -n 1)

# pin new version
pin=$(ipfs pin add $hash)

# publish hash to ipns
ipns=$(ipfs name publish $hash)

# add new hash to old versions post
#date=$(date +"%Y-%m-%d")
#echo "$date: [/ipfs/$hash](http://ipfs.io/ipfs/$hash)\n\n" >> content/post/old-versions.md

#return ipns output
echo $ipns
