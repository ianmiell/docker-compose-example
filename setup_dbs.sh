#!/bin/bash
echo "Creating directory"
mkdir -p /tmp/sqlitedbs
cd /tmp/sqlitedbs
echo "Removing old DBs"
rm -f test live
echo "Creating DBs"
echo 'create table t1(c1 text);' | sqlite test
echo 'create table t1(c1 text);' | sqlite live
echo "Inserting data"
echo 'insert into t1 values ("test");' | sqlite test
echo 'insert into t1 values ("live");' | sqlite live
cd - > /dev/null 2>&1 
echo "All done OK"
