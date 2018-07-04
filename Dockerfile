FROM microsoft/aspnetcore-build:2.0 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

ENTRYPOINT [ "dotnet" "publish"]
CMD [ "-v m --configuration Release --force --self-contained --output ./Release-Pipe-SSH-Pageant/" ]