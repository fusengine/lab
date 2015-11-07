#! Create and mount folder
sudo mkdir /var/www
sudo mount -t vboxsf www /var/www

#! composer command
echo 'alias composer='\''docker run -ti --rm -v  $(pwd):/app composer/composer'\''' >> /home/docker/.ashrc
echo 'cd /var/www' >> /home/docker/.ashrc
