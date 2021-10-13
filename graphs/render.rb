#! /usr/bin/env ruby

require 'json'
require 'gruff'

raw_file = File.read(ARGV[1])
data = JSON.parse raw_file

g = Gruff::Bar.new('800x600')
g.theme = {
  :colors => %w[orange purple green white red #cccccc],
  :marker_color => 'white',
  :background_colors => %w[#1d1d1d #4a4a4a]
}
g.show_labels_for_bar_values = true
g.maximum_value = 120
g.minimum_value = 0
g.y_axis_increment = 15
g.sort = false
g.title = "Run ##{ARGV[0]}"
# g.x_axis_label = 'Wagon'
g.y_axis_label = 'Seconds'
g.data('time', data)
g.write(ARGV[2])
