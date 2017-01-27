rm -r --force ./app/
git clone -q --branch=master https://github.com/kwaazaar/resonance.web.git ./app/
docker run -it -v $(pwd)/app:/app --workdir /app/Resonance.Web microsoft/aspnetcore-build bash -c "dotnet restore && dotnet publish -c Release -o ./bin/Release/PublishOutput"
mkdir release
cp app/Resonance.Web/bin/Release/PublishOutput?/* ./release -r
