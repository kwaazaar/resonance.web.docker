rm -r --force ./app/
git clone -q --branch=master https://github.com/kwaazaar/resonance.web.git ./app/
docker run -it -v ./app --workdir /app microsoft/aspnetcore-build bash -c "dotnet restore && dotnet publish -c Release -o ./bin/Release/PublishOutput"
