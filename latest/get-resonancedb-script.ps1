# Download DB-script for MySql
New-Item -ItemType Directory resonancedb -ErrorAction Ignore
wget https://raw.githubusercontent.com/kwaazaar/Resonance/master/Resonance.Core/content/ResonanceDB.mdf -O resonancedb/ResonanceDB.mdf
wget https://raw.githubusercontent.com/kwaazaar/Resonance/master/Resonance.Core/content/ResonanceDB_log.ldf -O resonancedb/ResonanceDB_log.ldf

