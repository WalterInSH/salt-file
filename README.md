My saltstack state files
===

###What is salt

>Salt is a new approach to infrastructure management. Easy enough to get running in minutes, scalable enough to manage tens of thousands of servers, and fast enough to communicate with them in seconds.

I use salt to set up my development environment(a laptop runs ubuntu).

For further info:[saltstack.com](http://saltstack.com)

###How to install on ubuntu

S1 install salt-minion

```
sudo apt-get install -y salt-minion
```

S2 clone this repository

```
git clone https://github.com/WalterInSH/salt-file.git
```

S3 config salt

uncomment below lines in /etc/salt/minion, then change the paths

```
file_roots:
  base:
    - /srv/salt #change to project folder path
```

```
pillar_roots:
  base:
      - /srv/pillar #change to project pillar folder path
```

S4 start salt-minion

```
service salt-minion start
```

S5

pillar/user/init.sls lists my personal infomation, rewrite them with your own infomation. Those items will be used when running salt.


Finally

Run salt and set up your development environment based on sls files

```
sudo salt-call --local state.highstate
```

If these's something you don't need, fork this repository, amend sls files.
