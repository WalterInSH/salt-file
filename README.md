My saltstack state files
===

##How to install

S1  

sudo apt-get install -y salt-minion

S2  
sudo vi /etc/salt/minion 

uncomment below lines:

pillar_roots:
  base:
      - /srv/pillar #change to project pillar folder path

S3  
vi pillar/user/init.sls

Use your info(eg. home path) to replace my info

Then  
salt-call --local pillar.items

Should show your info


Finally  
sudo salt-call --local state.highstate


Please fork if you like
