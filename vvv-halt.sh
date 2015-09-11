# Halt script for CPD Theme
# -----------------------------------------------------------------------------

# Perform backup
# -------------------------------------

dbname="cpd_theme"
dbfile="$dbname.sql"
backupsrc="database/backups"
backuptgt="$(dirname $0)/database"
user=$USER

cd $backupsrc

if [ -f $dbfile ]
  then
    cp $dbfile $backuptgt

    cd $backuptgt

    mv $dbfile "$dbname-$user.sql"

    echo "CPD database file backed up to the repo!";

  else
    echo "No CPD database file available for backup!"
fi
