#! /bin/sh

./graphs/bar.rb $1 ./data/run$1.json ./graphs/run$1-bar.png
./graphs/line.rb $1 ./data/run$1.json ./graphs/run$1-line.png