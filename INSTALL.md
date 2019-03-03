### Installation

The solution was setup and done on a vanilla Ubuntu 18.04 x64 installation. The scripts where written for this environment 
but am sure they should work in most Ubuntu versions. If running another version of Linux just install the same dependencies 
as these scripts does

1. Run the install_me.sh script, this installs all the required tooling applications
2. The PostgresSQL install in Peer mode by defualt. Needs too be in Login mode for a client to connect. 
   Please edit this file: 
   sudo nano /etc/postgresql/10/main/pg_hba.conf 
   
   Change this peer to md5:
   local   all             postgres                                peer
   
   Restart PostgresSQL:
   sudo service postgresql restart
3. Run the setup_me.sh
4. After completion cd into hr_portal and run:
    mix phx.server
5. visit http://localhost:4000
