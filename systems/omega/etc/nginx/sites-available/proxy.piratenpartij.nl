server {
	listen 443;
	server_name proxy.piratenpartij.nl *.proxy.piratenpartij.nl;

	ssl on;
	ssl_certificate /etc/ssl/certs/proxy.piratenpartij.nl.pem;
	ssl_certificate_key /etc/ssl/private/proxy.piratenpartij.nl.key;
	ssl_session_timeout 5m;
	ssl_protocols SSLv3 TLSv1;
	ssl_ciphers ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv3:+EXP;
	ssl_prefer_server_ciphers on;

	location / {
		if ($http_host ~ "^(.+)\.proxy\.piratenpartij\.nl$"){
   		 rewrite ^(.*)$ https://proxy.piratenpartij.nl/%1/$1 redirect;
  		}
		 proxy_set_header X_FORWARDED_PROTO https;
              	proxy_set_header  X-Forwarded-For $proxy_add_x_forwarded_for;
              	proxy_set_header  Host $http_host;
              	proxy_set_header  X-Url-Scheme $scheme;
              	proxy_redirect    off;
              	proxy_max_temp_file_size 0;
		proxy_set_header Host $host;
		proxy_pass        http://127.0.0.1:2080/;
	}
}

server {
	listen   80;
	server_name proxy.piratenpartij.nl *.proxy.piratenpartij.nl;

	location / {
		if ($http_host ~ "^(.+)\.proxy\.piratenpartij\.nl$"){
   		 rewrite ^(.*)$ https://proxy.piratenpartij.nl/%1/$1 redirect;
  		}
		rewrite        ^ https://$server_name$request_uri? permanent;
		proxy_set_header Host $host;
		proxy_pass        http://127.0.0.1:2080/;
	}
}
