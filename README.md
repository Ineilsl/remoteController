# remoteController
This is a Basic Script to manage a remote server on BASH Script.
1. Install wakeonlan
2. Generate SSH Key (From)
3. Add your SSH Key (From) to your other computer (TO)
4. copy this repository and store it (Example: "/script/remote/main.sh")
5. Add the alias
   5.1 vi ~/.bashrc
   5.2 alias server='bash /script/remote/main.sh'
6. Execute it!
  6.1 server start
  6.2 server stop
  6.3 server restart
  6.4 server status
7. With love from Spain. Enjoy!

NOTE: BE SURE THAT YOU ARE ALLOWED TO RESTART AND POWEROFF YOUR SERVER (WITH YOUR SSH USER so, you could use VISUDO to add it.)
      AND JUST USE THIS SCRIPT WITH CARE AND SECURE.
