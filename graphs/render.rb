#! /usr/bin/env ruby

require 'json'
require 'gruff'

raw_file = File.read(ARGV[0])
data = JSON.parse raw_file

g = Gruff::Bar.new('800x600')
g.theme = {
  'colors' => %w[orange purple green white red #cccccc],
  'marker_color' => ['white'],
  'background_colors' => ['black']
}
g.show_labels_for_bar_values = true
g.maximum_value = 120
g.minimum_value = 0
g.y_axis_increment = 30
g.sort = false
g.title = 'Portion of Final Assembly Times from Run #2'
# g.x_axis_label = 'Wagon'
g.y_axis_label = 'Seconds'
g.data('time', data)
g.write('graph.png')
