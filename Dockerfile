FROM microsoft/dotnet:2.2-aspnetcore-runtime
EXPOSE 8000
RUN apt-get update; apt-get install -y unzip; apt-get install wget -y
RUN wget -O BaGet.zip https://github.com/loic-sharma/BaGet/releases/download/v0.1.77-prerelease/BaGet.zip \
    && unzip BaGet.zip
ENV ASPNETCORE_URLS="http://*:80"
ENTRYPOINT ["dotnet", "BaGet.dll"]