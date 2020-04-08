#!/bin/sh


if false; then
    postfixadmin-cli domain add thebarn.com
    postfixadmin-cli mailbox add cattelan@thebarn.com --name "Russell Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
    postfixadmin-cli mailbox add tomv@thebarn.com --name "Tom Varghees"  --password "SnowShoe00" --password2 "SnowShoe00"
    postfixadmin-cli mailbox add bogus@thebarn.com --name "Bogus emails"  --password "SnowShoe00" --password2 "SnowShoe00"
    postfixadmin-cli domain update thebarn.com  --aliases 100

fi

if false; then
    postfixadmin-cli alias update abuse@thebarn.com --goto cattelan@thebarn.com
    postfixadmin-cli alias update hostmaster@thebarn.com --goto cattelan@thebarn.com
    postfixadmin-cli alias update webmaster@thebarn.com --goto cattelan@thebarn.com
    postfixadmin-cli alias update postmaster@thebarn.com --goto cattelan@thebarn.com
fi 



cattelan_alias="\
info    \
contact  \
russell.cattelan  \
RussellCattelan  \
moo  \
redbox  \
amazon  \
citypages  \
padi  \
fedex  \
invoice  \
"

if false; then
    for alias in $cattelan_alias; do
	postfixadmin-cli alias add $alias@thebarn.com --goto cattelan@thebarn.com
    done
fi


bogus_alias="\
atron  \
storm  \
mp3  \
musicvillage  \
choiceinteractions  \
match2  \
match  \
match3  \
symantic  \
firststar  \
quicken  \
apple  \
salvage  \
porn  \
geek  \
musicmatch  \
orbitz  \
colorado  \
ad  \
bendover  \
sophos  \
lowermybills  \
jleather  \
fetish  \
expedia  \
sandisk  \
fool  \
mediaone  \
mconline  \
bakbone  \
breck  \
monster  \
mbna  \
imst  \
priceline  \
hotwire  \
register  \
horny  \
thewoodexchange  \
bodymint  \
tootimid  \
computerwork  \
mangrec  \
ithideout  \
homecenter  \
sun  \
9thtee  \
fossil  \
att  \
kazaa  \
dtv  \
hotornot  \
netscape  \
uhg  \
moonshine  \
andromeda  \
delorme  \
lend  \
nada  \
st  \
4sure  \
lendingtree  \
discover  \
usbank  \
travelocity  \
autotrader  \
startribune  \
tcf  \
boyz  \
sony  \
circuitcity  \
pcmall  \
nwa  \
tivo  \
bluetooth  \
palm  \
vmware  \
fleet  \
topozone  \
chief  \
gun  \
pirate  \
offers  \
themarriagetoychest  \
rsvp  \
art  \
diver  \
tomtomxxl  \
ruelala  \
schwaggle  \
peoplesmart  \
intelius  \
tinder  \
eharmony  \
omharmonics  \
mayo  \
nflstream  \
jobsearch  \
cryptocurrency  \
liltmedia  \
bitcoin  \
"


for alias in $bogus_alias; do
#    postfixadmin-cli alias add $alias@thebarn.com --goto bogus@thebarn.com --active
    postfixadmin-cli alias delete $alias@thebarn.com
done
