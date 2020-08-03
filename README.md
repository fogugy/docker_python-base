## 1. Create docker image
```
docker build --tag <image name> .
```   

## 2. Run from current path
```
bash start <image name> <container name> <ports to expose>
```

## 3. Freeze to <requirements.txt>
```
bash freeze <container name> <requirements.txt>
```

## 4. Install from <requirements.txt>
```
bash install <container name> <requirements.txt>
```

## 5. Run jupyter in container
```
bash jupyter <container name> <jupyter port>
```

## You can create docker image from container with
```
docker container commit <container name> <image name>
```

## Problems with directory sharing fix
https://github.com/docker/for-win/issues/1712#issuecomment-407891416

TLDR;  

In docker settings 
- add to shared volumes whole app directory
- reset credentials 
- restart docker
- if logged in logout -> login