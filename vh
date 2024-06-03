<VirtualHost *:80>
    # Server Admin Email
    ServerAdmin webmaster@example.com

    # Server Name (Primary Domain)
    ServerName example.com

    # Server Alias (Additional Domains)
    ServerAlias www.example.com

    # Document Root (Directory that contains the website files)
    DocumentRoot /var/www/example.com/public_html

    # Directory Permissions
    <Directory /var/www/example.com/public_html>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    # Error Log (Logs errors related to this virtual host)
    ErrorLog ${APACHE_LOG_DIR}/example.com_error.log

    # Custom Log (Logs all requests made to this virtual host)
    CustomLog ${APACHE_LOG_DIR}/example.com_access.log combined

    # Redirect HTTP to HTTPS (if you have SSL configured)
    # Uncomment the following lines if HTTPS is set up
    #RewriteEngine on
    #RewriteCond %{SERVER_NAME} =example.com [OR]
    #RewriteCond %{SERVER_NAME} =www.example.com
    #RewriteRule ^ https://%{SERVER_NAME}%{REQUEST_URI} [END,NE,R=permanent]
</VirtualHost>

# SSL Configuration (if HTTPS is used)
#<VirtualHost *:443>
#    ServerAdmin webmaster@example.com
#    ServerName example.com
#    ServerAlias www.example.com
#    DocumentRoot /var/www/example.com/public_html

#    SSLEngine on
#    SSLCertificateFile /etc/ssl/certs/example.com.crt
#    SSLCertificateKeyFile /etc/ssl/private/example.com.key
#    SSLCertificateChainFile /etc/ssl/certs/chain.pem

#    <Directory /var/www/example.com/public_html>
#        Options Indexes FollowSymLinks
#        AllowOverride All
#        Require all granted
#    </Directory>

#    ErrorLog ${APACHE_LOG_DIR}/example.com_ssl_error.log
#    CustomLog ${APACHE_LOG_DIR}/example.com_ssl_access.log combined
#</VirtualHost>
