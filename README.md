# Quick start

**Build(dev env)**
Build by src dir, then output to dist dir.
This runs as watch mode.
```
docker run --rm -v <src>:/app/src -v <dist>:/app/dist -d -t reactb --dev
```

**Build(dev update)**
use this when you update config or install.
```
docker run --rm -v $PWD:/app -v <src>:/app/src -v <dist>:/app/dist -d -t reactb --dev
```

**Build(prd env)**
For production build.
```
docker run --rm -v <src>:/app/src -v <dist>:/app/dist -t reactb
```

# Check basic behavior
```
docker build -t reactb .
# dev sample
docker run --rm -t -d reactb --dev
docker logs -f <container-name>

# prd sample
docker run --rm -t reactb
```
