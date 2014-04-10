$ORIGIN		piratenpartij.nl
$TTL		7200

@			IN	SOA	omega dnsmaster@piratenpartij.nl. 2014041001 7200 3600 604800 3600

			IN	NS	omega
			IN	NS	haestrom
			IN	NS	citadel
			IN	A	0.0.0.0
			IN	TXT	"v=spf1 +mx +ptr -all"
			IN	SPF	"v=spf1 +mx +ptr -all"
			IN	MX	10 citadel



amsterdam-nl		IN	A	149.210.173.165
			IN	AAAA	2a01:7c8:aab4:592::2

irc			IN	CNAME	amsterdam-nl



citadel			IN	A	0.0.0.0
			IN	AAAA	::
			IN	LOC	52 19 59.479 E 4 55 27.170 E 0.00m 0.00m 0.00m 0.00m
			IN	SSHFP	3 1
			IN	SSHFP	3 2



haestrom		IN	A	0.0.0.0
			IN	AAAA	::
			IN	LOC	52 24 29.822 N 4 50 35.713 E 0.00m 0.00m 0.00m 0.00m
			IN	SSHFP	3 1
			IN 	SSHFP	3 2



illium			IN	A	0.0.0.0
			IN	AAAA	::
			IN	LOC	52 19 59.479 E 4 55 27.170 E 0.00m 0.00m 0.00m 0.00m
			IN	SSHFP	3 1
			IN 	SSHFP 	3 2



omega			IN	A	149.210.173.162
			IN	AAAA	2a01:7c8:aab4:592::1
			IN	LOC	52 23 36.232 N 4 50 52.051 E 0.00m 0.00m 0.00m 0.00m
			IN 	SSHFP	3 1 71f45790aee11afdb818f73c0038cbbdd1128be9
			IN	SSHFP	3 2 ca51c2ad1c025aac44305afd884abd203cfdf2fe5847added678d528aeaab27f

proxy			IN	CNAME	omega
*.proxy			IN	CNAME	omega
tpb			IN	CNAME	omega
