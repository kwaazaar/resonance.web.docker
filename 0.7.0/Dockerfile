FROM microsoft/aspnetcore

# grab the latest source
RUN git clone -q --branch=master https://github.com/kwaazaar/resonance.web.git /var/src/

# compile it
WORKDIR /var/src/resonance.web
RUN dotnet restore \
    && dotnet build -c Release -r ubuntu.16.04-x64 -f netstandard1.6

CMD dotnet run
