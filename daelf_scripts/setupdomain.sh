#!/bin/sh -x

cattelan_pw=$(openssl rand -base64 14)
ross_pw=$(openssl rand -base64 14)
rory_pw=$(openssl rand -base64 14)
renee_pw=$(openssl rand -base64 14)
ron_pw=$(openssl rand -base64 14)
lu_pw=$(openssl rand -base64 14)
tomv_pw=$(openssl rand -base64 14)


postfixadmin-cli domain add cattelan.org


postfixadmin-cli mailbox add cattelan@cattelan.org --name "Russell Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add russell@cattelan.org --name "Russell Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add ross@cattelan.org --name "Ross Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add renee@cattelan.org --name "Renee Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add rory@cattelan.org --name "Rory Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add ron@cattelan.org --name "Ron Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add lu@cattelan.org --name "Lu Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"


postfixadmin-cli domain add digitalelves.com
postfixadmin-cli mailbox add cattelan@digitalelves.com --name "Russell Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add tomv@digitalelves.com --name "Tom Varghees"  --password "SnowShoe00" --password2 "SnowShoe00"

postfixadmin-cli alias update abuse@digitalelves.com --goto cattelan@digitalelves.com
postfixadmin-cli alias update hostmaster@digitalelves.com --goto cattelan@digitalelves.com
postfixadmin-cli alias update webmaster@digitalelves.com --goto cattelan@digitalelves.com
postfixadmin-cli alias update postmaster@digitalelves.com --goto cattelan@digitalelves.com

postfixadmin-cli domain add thebarn.com
postfixadmin-cli mailbox add cattelan@thebarn.com --name "Russell Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"
postfixadmin-cli mailbox add tomv@thebarn.com --name "Tom Varghees"  --password "SnowShoe00" --password2 "SnowShoe00"

postfixadmin-cli alias add bogus@thebarn.com --goto cattelan@thebarn.com


postfixadmin-cli domain add xfs.org
postfixadmin-cli mailbox add cattelan@xfs.org --name "Russell Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"


postfixadmin-cli domain add daelf.org
postfixadmin-cli mailbox add cattelan@daelf.org --name "Russell Cattelan"  --password "SnowShoe00" --password2 "SnowShoe00"

for alias in (abuse hostmaster webmaster postmaster); do
    echo $alias
    postfixadmin-cli alias update $alias@cattelan.org --goto root@cattelan.org
done
