require './colorized_string'

string, color = ARGV

has_color = String::COLORS.has_key? color.to_sym
raise "[ERROR]: Not found color '#{color}'" unless has_color

puts string.send color
