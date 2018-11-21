class Visualization
  COLORS = {
    black: 30,
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    gray: 37
  }.freeze

  def initialize(file_path, color)
    @file_path = file_path
    @color = color
  end

  COLORS.each do |method_name, color_code|
    define_method method_name do |string|
      puts "\e[#{color_code}m#{string}\e[0m"
    end
  end

  def output
    File.open(@file_path, 'r') do |f|
      f.each_line do |line|
        puts send(@color, line)
      end
    end
  end
end

class Validator
  SUPPORTED_COLORS = Visualization::COLORS.keys.map(&:to_s)

  def validate(input)
    raise('Wrong number of arguments!') unless input.length.eql?(2)
    raise("Color is not supported. Supported colors are #{SUPPORTED_COLORS.join(', ')}.") unless SUPPORTED_COLORS.include?(input[1])
    raise('File not found.') unless File.file?(input[0])
  end
end

begin
  input = ARGV
  Validator.new.validate(input)

  text = ARGV[0]
  color = ARGV[1]

  Visualization.new(text, color).output
rescue StandardError => e
  puts e.to_s
end
