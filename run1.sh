#! /bin/sh

./record.rb run1.json
./process.rb run1.json run1-report.json
echo 'Results:'
cat run1-report.json