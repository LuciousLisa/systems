server {
	listen 443;
	server_name tpb.piratenpartij.nl;

	ssl on;
	ssl_certificate /etc/ssl/certs/proxy.piratenpartij.nl.pem;
	ssl_certificate_key /etc/ssl/private/proxy.piratenpartij.nl.key;
	ssl_session_timeout 5m;
	ssl_protocols SSLv3 TLSv1;
	ssl_ciphers ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv3:+EXP;
	ssl_prefer_server_ciphers on;

	location / {
		 rewrite ^(.*)$ https://proxy.piratenpartij.nl/thepiratebay.se permanent;
	}
}

server {
	listen   80;
	server_name tpb.piratenpartij.nl;

	location / {
		 rewrite ^(.*)$ https://proxy.piratenpartij.nl/thepiratebay.se permanent;
	}
}
