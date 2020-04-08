#!/bin/sh

PATH=$PATH:/usr/local/bin

doctl_cmd="doctl compute domain records create"

domain='thebarn.com'


IFS=""
txt[0]='v=spf1 ip4:50.249.112.77/32 ptr include:comcastbusiness.net ~all'
txt[1]='v=DMARC1;p=none;pct=100;rua=mailto:postmaster@thebarn.com'

if false; then
for txt in ${txt[*]}; do
    echo $txt
    doctl compute domain records create --record-type TXT --record-name @ --record-data $txt $domain
done
fi

IFS=" "
if true; then
names="lupo mail0 mail imap smtp fw0 www ftp owntracks owncloud"
for name in $names; do
    echo $name
    $doctl_cmd --record-type A --record-name $name --record-data 50.249.112.77 $domain
done
fi
