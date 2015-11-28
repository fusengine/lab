#! Create and mount folder
sudo mkdir /var/www
sudo mount -t vboxsf local.dev /var/www

#! composer command
echo 'alias composer='\''docker run -ti --rm -v  $(pwd):/app fusengine/composer'\''' >> /home/docker/.ashrc
echo 'cd /var/www' >> /home/docker/.ashrc
