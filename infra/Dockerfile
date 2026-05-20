# Stage 1: Build
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Copy csproj and restore dependencies (optimizes caching)
COPY ["ApiDemo.csproj", "./"]
RUN dotnet restore "./ApiDemo.csproj"

# Copy the rest of the code and build
COPY . .
RUN dotnet publish "ApiDemo.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Stage 2: Runtime (Defaulting to Ubuntu in .NET 10)
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
EXPOSE 8080

# Run as a non-privileged user for improved security
USER $APP_UID
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "ApiDemo.dll"]
