#
# 2018-4-4
#

require ["fileinto"];
# rule:[Bitcoin]
if allof (header :contains "subject" "[bitcoin/bitcoin]")
{
	fileinto "mail-lists/bitcoin";
	stop;
}
# rule:[booboo]
if header :contains "subject" "booboo"
{
	fileinto "booboo";
	stop;
}
# rule:[pcp]
if header :contains "subject" "[pcp]"
{
	fileinto "mail-lists/pcp";
	stop;
}
# rule:[lkml]
if address ["To","CC"] "linux-kernel@vger.kernel.org"
{
	fileinto "mail-lists/lkml";
	stop;
}
# rule:[xfs]
if address ["To","CC"] "linux-xfs@vger.kernel.org"
{
	fileinto "mail-lists/xfs";
	stop;
}
# rule:[rspam]
if header :is "X-Spam" "Yes"
{
	fileinto "rspamd";
	stop;
}
# rule:[SeekingAlpha]
if address :is "from" "account@seekingalpha.com"
{
	fileinto "seekingalpha";
	stop;
}
# rule:[SeekingAlpha]
if address :is "from" "account@mr.seekingalpha.com"
{
	fileinto "seekingalpha";
	stop;
}
# rule:[groupon]
if address :is "from" "noreply@r.groupon.com"
{
	fileinto "Ham";
	stop;
}
# rule:[leftlanesports]
if address :is "from" "gearup@gearup.leftlanesports.com"
{
	fileinto "Ham";
	stop;
}
# rule:[livingsocial]
if address :is "from" "noreply@r.livingsocial.com"
{
	fileinto "Ham";
	stop;
}
# rule:[active.com]
if address :is "from" "newsletters@discover.active.com"
{
	fileinto "Ham";
	stop;
}
# rule:[citypages]
if address :is "from" "email@email.citypages.com"
{
	fileinto "Ham";
	stop;
}
# rule:[harbor freight]
if address :is "from" "hft@em.harborfreight.com"
{
	fileinto "Ham";
	stop;
}
# rule:[Kohls]
if address :is "from" "Kohls@s.kohls.com"
{
	fileinto "Ham";
	stop;
}
# rule:[Thrive Global]
if address :is "from" "news@mailer.thriveglobal.com"
{
	fileinto "ThriveGlobal";
	stop;
}
# rule:[tumblr]
if address :is "from" "no-reply@tumblr.com"
{
	fileinto "Ham";
	stop;
}
# rule:[storef]
if address :is "from" "storef@berglist.com"
{
	fileinto "STOREF";
	stop;
}
# rule:[spark people]
if address :is "from" "mailer@sparkpeople.com"
{
	fileinto "Ham";
	stop;
}
# rule:[business insider]
if address :is "from" "newsletter@businessinsider.com"
{
	fileinto "Ham";
	stop;
}
# rule:[White House Color]
if address :is "from" "hello@whcc.com"
{
	fileinto "Ham";
	stop;
}
