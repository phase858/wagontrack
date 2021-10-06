#! /bin/sh

./record.rb run2.json
./process.rb run2.json run2-report.json
cat run2-report.json
