# Option 1: set up dummy database
#sqlcode="CREATE TABLE Persons (id int, name varchar(255));
#INSERT INTO Persons (id, name) VALUES (1, 'Herve'), (2, 'Ludo'),(3, 'Michael'), (4, 'Filip');
#CREATE TABLE Cities (id int, name varchar(255));
#INSERT INTO Cities (id, name) VALUES (1, 'Antwerp'), (2, 'Waterloo'),(3, 'Philly');
#CREATE TABLE Housing (id int, person_id int, city_id int);
#INSERT INTO Housing (id, person_id, city_id) VALUES (1, 1, 2), (2, 2, 2), (3, 3, 3), (4, 4, 1);"
#sqlfile=build_db.sql
#echo $sqlcode > $sqlfile
#dbname=testdb
#service postgresql start \
#  && sudo -u postgres createdb -O repl $dbname \
#  && sudo -u repl psql -d $dbname -a -f $sqlfile \
#  && service postgresql stop

# Option 2: set up realistic database
apt-get update && apt-get install -y unzip
zipfile=dvdrental.zip
tarfile=dvdrental.tar
dbname=dvdrental
url=https://s3.amazonaws.com/assets.datacamp.com/course/sql/$zipfile
wget $url
unzip -q $zipfile

service postgresql start \
  && sudo -u postgres createdb -O repl $dbname \
  && sudo -u repl pg_restore -d $dbname $tarfile \
  && service postgresql stop

rm $zipfile $tarfile

#rebuild!!!!!!!!!
export DC_SCT_EXTENSIONS='https://s3.amazonaws.com/assets.datacamp.com/production/course_3165/datasets/sct_helper.txt'
pip3 install git+https://$GITHUB_TOKEN@github.com/datacamp/sqlbackend.git@feature-preload-hook
pip3 install git+https://$GITHUB_TOKEN@github.com/datacamp/sqlwhat.git@feature-sct-compose --upgrade
