#![Alt text](http://ogum.ch:100/logo2.png) Docker
=================================================

Env dev for php
---------------

### Mount local folder to Kitematic to OSX 10.10.5

1.	Go to connect to ssh on boot2docker Kitematic <code> docker-machine ssh default </code>.

2.	Create a folder <code> sudo mkdir /var/www </code> to boot2docker and go to look look is Create <code> ls -la </code><br>

3.	mount your folder <code> sudo mount -t vboxsf www{mac folder} /var/www{boot2docker folder} </code>. Go to look is good to mount your files and see print your reportory {mac folder}.

4.	And go to create your files bootlocal.sh

```
sudo vi /var/lib/boot2docker/bootlocal.sh
```

1.	To sure your script.sh is run exec

```
sudo chmod +x /var/lib/boot2docker/bootlocal.sh
```

### Composer

1.	go to search package <strong>Composer/Composer</strong>.
2.	run command

```
docker run -ti -v  $(pwd):/app composer/composer init
```

1.	to persiste command composer go to bootlocal.sh <code> sudo vi /var/lib/boot2docker/bootlocal.sh </code> and add your command.
2.	write bootlocal.sh

```
echo 'alias composer='\''docker run -ti --rm -v  $(pwd):/app composer/composer'\''' >> /home/docker/.ashrc
echo 'cd /var/www' >> /home/docker/.ashrc
```

1.	reboot Kitematic.

<p>  Finaly restart your Kitematic
  <h2> and good go to works ;) </h2>
</p>
