#! /usr/bin/env ruby

require 'json'
require 'gruff'

raw_file = File.read(ARGV[0])
data = JSON.parse raw_file

g = Gruff::Bar.new

# Let's hack almost everything
# g = Gruff::Bar.new('800x700') # Define a custom size

g.sort = false  # Do NOT sort data based on values
# g.maximum_value = 40  # Declare a max value for the Y axis
# g.minimum_value = 0   # Declare a min value for the Y axis
# g.y_axis_increment = 1  # Points shown on the Y axis

# g.legend_font_size = 14 # Legend font size
# g.title_font_size = 22 # Title font size

# g.font = '/Library/Fonts/NuevaStd-BoldCond.otf' # Path to a custom font

# g.top_margin = 10 # Empty space on the upper part of the chart
# g.bottom_margin = 30  # Empty space on the lower part of the chart

# g.theme = {   # Declare a custom theme
#   :colors => %w(orange purple green white red #cccccc), # colors can be described on hex values (#0f0f0f)
#   :marker_color => 'black', # The horizontal lines color
#   :background_colors => %w(white grey) # you can use instead: :background_image => ‘some_image.png’
# }

g.title = 'A more advanced bar chart'
g.x_axis_label = 'wagon'
g.y_axis_label = 'seconds'

g.data(data)

# g.labels = {0 => 'Last year', 1 => 'This year', 2 => 'Next year'} # Define labels for each of the "columns" in data

g.write('graph.png')