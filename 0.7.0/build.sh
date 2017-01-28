#!/bin/bash

# Remove exising app folder (leftover)
rm -rf ./app/

# Download sources from GitHub
git clone -q --branch=master https://github.com/kwaazaar/resonance.web.git ./app/

# Use aspnetcore-build docker-image to compile sources and copy the results to the /app/publish folder
docker run -it --rm -v $(pwd)/app:/app --workdir /app microsoft/aspnetcore-build bash -c "dotnet restore && dotnet publish Resonance.Web/project.json -c Release -o /app/publish"

# Create a docker image based on the compile results (remove existing first). Check Dockerfile for its instructions.
docker rmi kwaazaar/resonance.web
docker build -t kwaazaar/resonance.web .
