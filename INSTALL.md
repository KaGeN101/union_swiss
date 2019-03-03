### Installation

The solution was setup and done on a vanilla Ubuntu 18.04 x64 installation. The scripts where written for this environment 
but I am sure they should work in most Ubuntu versions. If running another version of Linux just install the same dependencies 
as these scripts does

1. Run the install_me.sh script, this installs all the required tooling applications. Just say Y to any stop points  
2. Setup the postgres user password:  
   sudo -u postgres psql postgres  
   Type: \password  
   Make the password: postgres  
   Exit: Ctrl^z  
   Exit back to your user session  
3. The PostgresSQL installs in Peer mode by defualt. Needs too be in Login mode for a client to connect.   
   Please edit this file:   
   sudo nano /etc/postgresql/10/main/pg_hba.conf 
   
   Change this peer to md5, should be the first one:
   local   all             postgres                                peer
   
   Restart PostgresSQL:  
   sudo service postgresql restart  
4. Run the setup_me.sh, also say Y to any stop points, the script starts the server in Step 5  
5. After completion cd into hr_portal and run:  
    mix phx.server  
6. visit http://localhost:4000
