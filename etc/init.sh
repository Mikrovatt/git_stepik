sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicron-wsgi.conf /etc/gunicron.d/test-wsgi
sudo ln -sf /home/box/web/etc/gunicron-django.conf /etc/gunicron.d/test-django
sudo /etc/init.d/gunicron restart
