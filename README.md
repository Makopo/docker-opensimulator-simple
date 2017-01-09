## Dockerfile for OpenSimulator

It is based on [official mono docker image](https://hub.docker.com/_/mono/).

* [OpenSimulator](http://opensimulator.org) 0.9.0.0-rc2
* Standalone Mode (port 9000)
* Username: Test User 
* Password: password

For other settings, look at OpenSim.ini and Regions.ini.

### Building

1. Clone or download this project.

2. Modify OpenSim.ini and Regions.ini to your preference.

3. Run docker build command.

```
$ docker build -t opensim .
```

### Running

You will need to forward both TCP and UDP port 9000 to your host.

```
$ docker run --name=opensim -p 9000:9000 -p 9000:9000/udp -d opensim
```

If you need to run any admin command on console, run it like that:

```
$ docker run --name=opensim -it -p 9000:9000 -p 9000:9000/udp opensim
```

NOTE: Currently, you may not be able to terminate the docker container even if you 'quit' the console. You'll need to run docker stop command from another terminal to kill the container.

### Connecting

Login URI should be look like that.

http://localhost:9000/

If you use Docker Toolbox or other hosts than localhost, "localhost" should be changed to your docker machine host name or ip. Before that, you'll probablly need to change the value of "ExternalHostName" in Regions.ini file and rebuild this image.


### Maintainer

Makopoppo (SL Name: Mako Nozaki)
