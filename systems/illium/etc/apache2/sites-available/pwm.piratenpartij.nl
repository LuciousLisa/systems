<IfModule mod_ssl.c>
	<VirtualHost *:80>
		ServerName pwm.piratenpartij.nl
		ServerAdmin hostmaster@piratenpartij.nl
		Redirect permanent / https://pwm.piratenpartij.nl/
	</VirtualHost>

	<VirtualHost *:443>
		ServerName pwm.piratenpartij.nl
		ServerAdmin hostmaster@piratenpartij.nl

		LogLevel info ssl:warn
		ErrorLog ${APACHE_LOG_DIR}/pwm.piratenpartij.nl.error.log

		SSLEngine on
		SSLProxyEngine on
		SSLCertificateFile /etc/ssl/certs/piratenpartij.nl.pem
		SSLCertificateKeyFile /etc/ssl/private/piratenpartij.nl.key
		SSLVerifyClient none

		ProxyVia on
		ProxyPass / http://127.0.0.1:8080/
		ProxyPassReverse / http://127.0.0.1:8080/
		ProxyPreserveHost on
		ProxyRequests off

		<Proxy *>
			Options FollowSymLinks MultiViews
			AllowOverride All
			Order allow,deny
			allow from all
		</Proxy>

		<Location />
			Order allow,deny
			Allow from all
		</Location>
</VirtualHost>
