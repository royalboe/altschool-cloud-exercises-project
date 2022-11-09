#! /usr/bin/bash
echo "Creating variables for my PSQL installation"
packages=('git' 'gcc' 'tar' 'gzip' 'libreadline5' 'make' 'zlib1g' 'zlib1g-dev' 'flex' 'bison' 'perl' 'python3' 'tcl' 'gettext' 'odbc-postgresql' 'libreadline6-dev')

rfolder='/postgres'

dfolder='/postgres/data'

gitloc='git://git.postgresql.org/git/postgresql.git'

sysuser='postgres'

helloscript='/home/leewalker/scripts/hello.sql'

logfile='psqlinstall-log'


echo "Updating server..."
sudo apt-get update -y >> $logfile

echo "Installing PostgreSQL dependencies"
sudo apt-get install ${packages[@]} -y >> $logfile

echo "Creating folders $dfolder..."
sudo mkdir -p $dfolder >> $logfile

echo "Creating system user '$sysuser'"
sudo adduser --system $sysuser >> $logfile

logfile='psqlinstall-log'

echo "Updating server..."
sudo apt-get update -y >> $logfile

echo "Creating folders $dfolder..."
sudo mkdir -p $dfolder >> $logfile

echo "Creating system user '$sysuser'"
sudo adduser --system $sysuser >> $logfile

echo "Pulling down PostgreSQL from $gitloc"
git clone $gitloc >> $logfile

echo "Configuring PostgreSQL"
~/postgresql/configure --prefix=$rfolder --datarootdir=$dfolder >> $logfile

echo "Making PostgreSQL"
make >> $logfile

echo "installing PostgreSQL"
sudo make install >> $logfile

echo "Giving system user '$sysuser' control over the $dfolder folder"
sudo chown postgres $dfolder >> $logfile

echo "Running initdb"
sudo -u postgres $rfolder/bin/initdb -D $dfolder/db >> $logfile

echo "Starting PostgreSQL"
sudo -u postgres $rfolder/bin/pg_ctl -D $dfolder/db -l $dfolder/logfilePSQL start >> $logfile

echo "Set PostgreSQL to launch on startup"
sudo sed -i '$isudo -u postgres /postgres/bin/pg_ctl -D /postgres/data/db -l /postgres/data/logfilePSQL start' /etc/rc.local >> $logfile

echo "Writing PostgreSQL environment variables to /etc/profile"
cat << EOL | sudo tee -a /etc/profile

LD_LIBRARY_PATH=/postgres/lib
export LD_LIBRARY_PATH
PATH=/postgres/bin:$PATH
export PATH
EOL


echo "Wait for PostgreSQL to finish starting up..."
sleep 5

echo "Running script"
$rfolder/bin/psql -U postgres -f $helloscrip

echo "Querying the newly created table in the newly created database."
/postgres/bin/psql -c 'select * from hello;' -U psqluser hello_postgres;
