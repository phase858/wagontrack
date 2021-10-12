#! /usr/bin/env ruby

require 'json'
require 'io/console'

file_name = ARGV[0]
file_raw = File.open(file_name, 'w+')

data = []
count = 0
last_time = Time.now.round(2)

def draw(count, time)
  system 'clear'
  puts "Wagon Count: #{count}\nLast Time: #{time} seconds\nPress space to log a wagon or q to quit."
end

draw(0, 0)

loop do
  c = STDIN.getch
  case c
  when ' '
    count += 1
    current_time = Time.now.round(2)
    elapsed_time = current_time - last_time
    last_time = current_time
    data << elapsed_time
    draw(count, elapsed_time)
  when 'q'
    break
  end
end

new_cont = JSON.pretty_generate data
file_raw.puts new_cont
