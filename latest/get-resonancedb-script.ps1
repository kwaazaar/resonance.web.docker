# Download DB-script for MySql
New-Item -ItemType Directory resonancedb -ErrorAction Ignore
wget https://raw.githubusercontent.com/kwaazaar/Resonance/master/Resonance.Core/content/ResonanceDB.MySql.sql -O resonancedb/ResonanceDB.MySql.sql

