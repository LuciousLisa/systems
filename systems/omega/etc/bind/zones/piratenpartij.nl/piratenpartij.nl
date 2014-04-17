$ORIGIN		piratenpartij.nl.
$TTL		7200

@			IN	SOA	omega dnsmaster.piratenpartij.nl. 2014041609 7200 3600 604800 3600

			IN	NS	omega
			IN	NS	haestrom
			IN	A	82.94.252.84
			IN	TXT	"v=spf1 +mx +ptr -all"
			IN	SPF	"v=spf1 +mx +ptr -all"
			IN	MX	10 mail



;;amsterdam-nl		IN	A	149.210.173.165
;;			IN	AAAA	2a01:7c8:aab4:592::2
;;
;;irc			IN	CNAME	amsterdam-nl



citadel			IN	A	82.94.175.173
			IN	AAAA	2001:888:2000:73:1::173
			IN	LOC	52 19 59.479 N 4 55 27.170 E 0.00m 0.00m 0.00m 0.00m



haestrom		IN	A	185.27.175.102
			IN	AAAA	2a00:f10:121:400:4a6:5aff:fe00:4b2
			IN	LOC	52 24 29.822 N 4 50 35.713 E 0.00m 0.00m 0.00m 0.00m
			IN	SSHFP	3 1 9446144c471489353002565f6f7ca8cd176c1f9e
			IN 	SSHFP	3 2 29ead32778b54ecf6f47de8f851c95b174eeef41706ba36ed3d5407f0c9c4ced

bnc			IN	CNAME	haestrom
nagios			IN	CNAME	haestrom



illium			IN	A	82.94.175.171
			IN	AAAA	2001:888:2000:73:1::171
			IN	LOC	52 19 59.479 N 4 55 27.170 E 0.00m 0.00m 0.00m 0.00m

testing			IN	CNAME	illium
phpldapadmin		IN	CNAME	illium
phpmyadmin		IN	CNAME	illium



omega			IN	A	149.210.173.162
			IN	AAAA	2a01:7c8:aab4:592::1
			IN	LOC	52 23 36.232 N 4 50 52.051 E 0.00m 0.00m 0.00m 0.00m
			IN 	SSHFP	3 1 71f45790aee11afdb818f73c0038cbbdd1128be9
			IN	SSHFP	3 2 ca51c2ad1c025aac44305afd884abd203cfdf2fe5847added678d528aeaab27f

proxy			IN	CNAME	omega
*.proxy			IN	CNAME	omega
tpb			IN	CNAME	omega




;; oude servers
admin			IN	CNAME	anker
amsterdam		IN	A	82.94.160.214
amsterdam-2		IN	A	82.94.175.135
			IN	AAAA	2001:888:2000:73:1::135
amsterdam-nl		IN	CNAME	geschut
amsterdam2		IN	A	82.94.160.214
anker			IN	A	82.94.252.82
			IN	AAAA	2001:888:2000:73:1::82 
berghout		IN	A	82.94.160.215
			IN	AAAA	2001:888:2000:73:1::215
bovendek		IN	A	82.94.160.198
			IN	AAAA	2001:888:2000:73:1::198
breda			IN	A	85.214.213.34
			IN	AAAA	2a01:238:422e:1600:a4d8:d1d0:eb56:9cd7
civileden		IN	A	10.8.0.1
civivpn			IN	A	82.94.160.210
			IN	AAAA	2001:888:2000:73:1::210
dagvandedownload	IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
denhaag			IN	A	212.117.168.186
donaties		IN	CNAME	doneer
doneer			IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
doneren			IN	CNAME	doneer
dump			IN	CNAME	voorsteven
erp			IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
forum			IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
forum-oud		IN	CNAME	anker
gallerij		IN	CNAME	voorsteven
gallery			IN	CNAME	voorsteven
geschut			IN	A	82.94.160.216
			IN	AAAA	2001:888:2000:73:1::216
groningen		IN	CNAME	kanon
hoekschewaard		IN	A	82.94.160.196
			IN	AAAA	2001:888:2000:73:1::196
imap			IN	CNAME	mail
ipmi.anker		IN	A	82.94.252.83
irc			IN	CNAME	nl.pirateirc.net.
kajuit			IN	A	82.94.252.85
			IN	AAAA	2001:888:2000:73:1::85
kanon			IN	A	82.94.252.84
			IN	AAAA	2001:888:2000:73:1::84
kanon-test		IN	A	82.94.160.208
			IN	AAAA	2001:888:2000:73:1::208
kwartier		IN	A	82.94.175.187
			IN	AAAA	2001:888:2000:73:1::187
landvast		IN	A	77.72.148.139
			IN	AAAA	2a01:7c8:aaae:4e9::1
ldap			IN	CNAME	anker
leiden			IN	A	212.117.168.186
lidworden		IN	CNAME	webshop
limburg			IN	A	141.105.120.38
			IN	MX	10 mail.limburg
lists			IN	A	37.34.61.138
			IN	AAAA	2a01:7c8:aaad:442::1
			IN	MX	10 mail
mail			IN	A	37.34.61.138
			IN	AAAA	2a01:7c8:aaad:442::1
mail.limburg		IN	A	141.105.120.38
mastvoet		IN	A	37.34.61.138
			IN	AAAA	2a01:7c8:aaad:442::1
minecraft		IN	A	92.48.126.33
mumble			IN	A	82.94.160.198
			IN	AAAA	2001:888:2000:73:1::198
office.amsterdam	IN	A	82.94.160.214
openerp			IN	A	82.94.160.205
			IN	AAAA	2001:888:2000:73:1::205
openfire		IN	A	82.94.160.198
			IN	AAAA	2001:888:2000:73:1::198
otrs			IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
owncloud		IN	CNAME	voorsteven
pad			IN	A	82.94.160.198
			IN	AAAA	2001:888:2000:73:1::198
prefectionist		IN	A	87.250.154.8
			IN	AAAA	2a02:f18:1:9a01:87:250:154:8
programma		IN	CNAME	ppeu2014.nosysoft.net.
projectpm		IN	A	178.18.132.237
pwm			IN	CNAME	anker
redmine			IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
rotterdam		IN	A	212.117.168.186
scheepshoorn		IN	A	82.94.160.202
			IN	AAAA	2001:888:2000:73:1::202
serkoon			IN	A	46.19.36.34
share			IN	CNAME	voorsteven
smtp			IN	CNAME	mail
stream-bak		IN	A	77.72.146.197
			IN	AAAA	2a01:7c8:aaae:218::1
voorsteven		IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
vrijwilligers		IN	A	82.94.160.213
			IN	AAAA	2001:888:2000:73:1::213
vrijwilligersopenerp	IN	A	82.94.175.135
webmail			IN	CNAME	mail
webshop			IN	A	82.94.252.86
			IN	AAAA	2001:888:2000:73:1::86
wiki			IN	CNAME	anker
www			IN	CNAME	kanon
zimbra			IN	A	82.94.160.197
			IN	AAAA	2001:888:2000:73:1::197
