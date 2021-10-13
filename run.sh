#! /bin/sh

./track/record.rb ./data/run$1.json
./track/process.rb ./data/run$1.json ./data/run$1-report.json
echo 'Results:'
cat ./data/run$1-report.json