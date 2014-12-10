#!/bin/bash
mkdir -p /tmp/sqlitedbs
cd /tmp/sqlitedbs
rm -f test live
echo 'create table t1(c1 text);' | sqlite test
echo 'insert into t1 values ("test");' | sqlite test
echo 'create table t1(c1 text);' | sqlite live
echo 'insert into t1 values ("live");' | sqlite live
cd -

