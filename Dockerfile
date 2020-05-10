FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine as base
WORKDIR /src
COPY *.csproj *.props *.targets *.sln ./
RUN dotnet restore -p:Configuration=Release
COPY ./ ./
RUN dotnet publish -c Release -o /app --no-restore
WORKDIR /app
ENTRYPOINT ["dotnet", "DockerExampleWithNerdbankGitVersioning.dll"]
