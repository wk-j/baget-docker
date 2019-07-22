FROM microsoft/dotnet:2.2-aspnetcore-runtime
EXPOSE 8000
RUN apt-get update; apt-get install -y unzip; apt-get install wget -y
RUN wget -O BaGet.zip https://github.com/loic-sharma/BaGet/releases/download/v0.1.77-prerelease/BaGet.zip \
    && unzip BaGet.zip
ENV ASPNETCORE_URLS="http://*:8000"
ENV ApiKeyHash="658489D79E218D2474D049E8729198D86DB0A4AF43981686A31C7DCB02DC0900"
ENTRYPOINT ["dotnet", "BaGet.dll"]