## BaGet

```bash
docker-compose build
docker-compose up

dotnet nuget push \
    -k  658489D79E218D2474D049E8729198D86DB0A4AF43981686A31C7DCB02DC0900 \
    -s http://localhost:7777/v3/index.json \
    .output/MyLib.1.0.0.nupkg
```