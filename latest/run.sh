#!/bin/bash

# It's easier to just use docker-compose with the provided docker-compose.yml
docker run --rm -d -p 8000:80 -e ConnectionStrings:Resonance.MySql="Server=172.17.0.3;Database=resonancedb;Connection Timeout=3;UserId=resonance;Password=Password12!;Allow User Variables=True;CharSet=utf8;MaximumPoolsize=50;" resonance:latest
docker run -d -p 3309:3306 -v $(pwd)/resonancedb:/docker-entrypoint-initdb.d -e MYSQL_ROOT_PASSWORD=Password12! -e MYSQL_USER=resonance -e MYSQL_PASSWORD=Password12! -e MYSQL_DATABASE=resonancedb mysql:5 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

