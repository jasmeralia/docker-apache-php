# start all the services
if [ "x$APACHE2_HOSTNAME" != "x" ]; then
  sed -e "s/ServerName www.example.com/ServerName $APACHE2_HOSTNAME/" /etc/apache2/sites-available/000-default.conf > /tmp/000-default.conf
  mv /tmp/000-default.conf /etc/apache2/sites-available/000-default.conf
fi

/usr/local/bin/supervisord -n
