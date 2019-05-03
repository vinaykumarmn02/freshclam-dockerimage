###Freshclam-Dockerfile

####How to run freshclam Dockerfile
Firstly  we have to build the Dockerfile, this can be done from below command, go to the Dockerfile path
``` docker build -t freshclam .```

#####To run docker image
```docker run -d -v /opt/mirror/mirror:/var/lib/clamav --name freshclam freshclam:latest ```