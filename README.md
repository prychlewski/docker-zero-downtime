Proof of concept app for zero downtime deployment with docker and HAProxy

**How to use**

Modify *src/index.html* to your liking. Remember to increment image tag

Start app:
```bash
docker-compose up -d
```

And check on localhost if app is runing.

Again make some changes to *index.html* and execute:
```bash
make deploy
```
this will build new image, drain traffic and remove old container.

Example console log:
```bash
./deploy.sh
Building api

Creating and starting dockerzerodowntime_api_2 ... done

Preparing new container...
Draining traffic from old container

Stopping container: dockerzerodowntime_api_1
Removing old container: dockerzerodowntime_api_1

Done!
```

**Simple monitor**

To observe server behaviour you can use:
```bash
make monitor
```

**HAProxy stats**

Open http://localhost:1936/

Use for login and password: *stats*