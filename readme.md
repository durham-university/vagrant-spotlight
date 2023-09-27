## Initial setup

First clone this repository onto the hard drive of your machine (a network location would be too slow). For example:
```
C:
cd \users\tbmg73
git clone https://source.dur.ac.uk/university-library/vagrant-spotlight
```
This will create a directory called `vagrant-spotlight`. If you need to use a different name, for example if you want a second copy to experiment with, give the name of the directory to be created at the end of the command:
```
git clone https://source.dur.ac.uk/university-library/vagrant-spotlight newdirectoryname
```
The virtual machine created by the Vagrantfile is called "spotlight-dev-vm" by default. VM names in VirtualBox have to be unique, so if you want a second copy to experiment with, edit the Vagrantfile to change the v.name setting on line 81 before you go any further. You may also want to adjust the memory available to the VM (defaults to 8GB) on the next line.

For the initial setup, just execute `vagrant up`.

Once this has run you can get onto your server by running `vagrant ssh`. Then issue the following commands:
```
cd
cd dur-spotlight
solr_wrapper
```
Then start another terminal and `vagrant ssh` again. Then:
```
cd dur-spotlight
rails server -b 0.0.0.0
```

You should now be able to [http://localhost:7000/](access Spotlight).
