# EarningManagementWebServer
WebServer for Earning Management


## To deploy it to Tomcat container:

$grails war
$java -jar build/libs/EarningManagementWebServer-0.1.war

* Install java:  sudo apt-get install openjdk-8-jdk

* [How to install grails](http://www.tothenew.com/blog/grails-3-and-deployment-to-tomcat-container/)

* [How to set up Tomcat Server](https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04) 

* [How to change port 8080 to 80 on Ubuntu14](https://www.digitalocean.com/community/questions/changing-from-port-8080-to-port-80)
* [How to keep process running after logging out](http://askubuntu.com/questions/8653/how-to-keep-processes-running-after-ending-ssh-session)
 1. ssh into your remote box. Type screen Then start the process you want.
 2. Press Ctrl-A then Ctrl-D. This will "detach" your screen session but leave your processes running. You can now log out of the remote box.
 3. If you want to come back later, log on again and type screen -r This will "resume" your screen session, and you can see the output of your process.
