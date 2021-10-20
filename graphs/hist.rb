#! /usr/bin/env ruby

require 'json'
require 'gruff'

raw_file = File.read(ARGV[1])
data = JSON.parse raw_file

g = Gruff::Histogram.new('800x600')
g.theme = {
  :colors => %w[orange purple green white red #cccccc],
  :marker_color => '#8d8d8d',
  :font_color => 'white',
  :background_colors => %w[#1d1d1d #4a4a4a]
}

g.title = 'Histogram Graph'
g.data :A, [10, 10, 20, 30, 40, 40, 40, 40, 40, 40, 50, 10, 10, 10]
g.data :B, [100, 100, 100, 100, 90, 90, 80, 30, 30, 30, 30, 30]
#g.maximum_value = 120
#g.minimum_value = 0
#g.y_axis_increment = 15
#g.sort = false
#g.title = "Run ##{ARGV[0]}"
# g.x_axis_label = 'Wagon'
#g.y_axis_label = 'Seconds'
#g.data('time', data)
g.write(ARGV[2])
