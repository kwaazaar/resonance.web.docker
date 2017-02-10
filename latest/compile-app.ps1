#!/bin/bash

# Remove exising app folder (leftover)
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue ./app

# Download sources from GitHub
git clone -q --branch=master https://github.com/kwaazaar/resonance.web.git ./app/

# Add compile.cmd to app-folder
Copy-Item compile.cmd app -Force

# Use aspnetcore-build docker-image to compile sources and copy the results to the /app/publish folder
$PWD = (Resolve-Path .\).Path
docker run -it -v $PWD\app:C:\app --workdir C:\app microsoft/dotnet:1.1.0-sdk-projectjson-nanoserver compile.cmd
