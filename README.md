# project-dat-HSR
Main Repository

## Setup Instructions
1. Clone Repo into Folder
2. Install Vagrant Tools
   On Linux and Mac OS it is recommended to install the vagrant bind plugins.
  
  ```sh
   $ vagrant plugin install vagrant-bindfs
   ```
3. Fire Vagrant VM up 

   ```shell
   $ vagrant up
   ```
4. Connect to VM via SSH
   
   ```shell
   $ vagrant ssh
   ```
5. Initial Setup dat
  
   ```shell
   $ dat init
   $ dat listen
   ```
6. Nodejs Server files are located in ./nodejs in the repository and link to /var/www in the vm.
7. Following ports are redirected:
    
    Host          | Guest          | Usage | Comment
    --- |---:|---|---
    9363 | 22 | `$ vagrant ssh`  | 
    3000 | 3000|http://localhost:3000 | for node.js
    5000 | 5000 | http://localhost:5000 | for foreman
    6461 | 6461|http://localhost:6461 | for dat web

8. On changes on the VM either destroy the vm (`$ vagrant destroy`) or try to update (`$ vagrant update`)
