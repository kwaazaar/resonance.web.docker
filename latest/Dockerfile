FROM microsoft/aspnetcore

LABEL maintainer robert.te.kaat@gmail.com

WORKDIR /app
COPY ./app/publish .

# Standard setup uses MySql
ENV ConnectionStrings:Resonance.MsSql="Server=(local);Database=ResonanceDB;User ID=sa;Password=Password12!;MultipleActiveResultSets=true;"
ENV ConnectionStrings:Resonance.MySql="Server=localhost;Database=resonancedb;Connection Timeout=3;UserId=resonance;Password=Password12!;Allow User Variables=True;CharSet=utf8;MaximumPoolsize=50;"
ENV Resonance:Repo:Database:Type=MsSql

ENTRYPOINT ["dotnet", "Resonance.Web.dll"]
