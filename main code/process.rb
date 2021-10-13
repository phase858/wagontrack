#! /usr/bin/env ruby

require 'json'

raw_file = File.read(ARGV[0])
out_file = File.open(ARGV[1], 'w+')
run_data = JSON.parse raw_file
data = {
  'wagon_count' => run_data.length,
  'average_time' => (run_data.sum / run_data.length).round(2),
  'longest_time' => run_data.max,
  'shortest_time' => run_data.min
}
out_file.puts JSON.pretty_generate data
