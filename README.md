## BaGet

```bash
docker-compose build
docker-compose up
```

```bash
dotnet nuget push \
    -k NUGET-SERVER-API-KEY \
    -s http://localhost:7777/v3/index.json .output/MyLib.1.0.1.nupkg
```