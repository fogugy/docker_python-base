## 1. Create docker image
```
docker build --tag <image name> .
```   

## 2. Run from current path

```
bash start.sh <image name> <container name> <ports to expose>
```

## 3. Freeze to <requirements.txt>
```
bash freeze <requirements.txt>
```

## 4. Install from <requirements.txt>
```
bash install <requirements.txt>
```

## 5. Run jupyter in container

```
bash jupyter.sh <container name> <jupyter port>
```



## Problems with directory sharing fix
https://github.com/docker/for-win/issues/1712#issuecomment-407891416

TLDR;  

In docker settings 
- add to shared volumes whole app directory
- reset credentials 
- restart docker
- if logged in logout -> login