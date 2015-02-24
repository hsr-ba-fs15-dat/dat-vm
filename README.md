# project-dat-HSR
Main Repository

## Setup Instructions
1. Clone Repo into Folder
2. Fire Vagrant VM up 

   ```shell
   $ vagrant up
   ```
3. Connect to VM via SSH
   
   ```shell
   $ vagrant ssh
   ```
4. Initial Setup dat
  
   ```shell
   $ dat init
   $ dat listen
   ```
5. Nodejs Server files are located in ./nodejs in the repository and link to /var/www in the vm.
6. Following ports are redirected:
    
    Host          | Guest          | Usage | Comment
    --- |---:|---|---
    22 | 9363 | `$ vagrant ssh`  | 
    3000 | 3000|http://localhost:3000 | for node.js
    6461 | 6461|http://localhost:6461 | for dat web

7. On changes on the VM either destroy the vm (`$ vagrant destroy`) or try to update (`$ vagrant update`)
