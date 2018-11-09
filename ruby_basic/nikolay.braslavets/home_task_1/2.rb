class String
  VALID_COLORS = ['black', 'red', 'green', 'brown', 'blue', 'magenta', 'cyan', 'gray']

  def self.valid_color?(color)
    VALID_COLORS.include?(color)
  end

  def black;
    "\e[30m#{self}\e[0m"
  end

  def red;
    "\e[31m#{self}\e[0m"
  end

  def green;
    "\e[32m#{self}\e[0m"
  end

  def brown;
    "\e[33m#{self}\e[0m"
  end

  def blue;
    "\e[34m#{self}\e[0m"
  end

  def magenta;
    "\e[35m#{self}\e[0m"
  end

  def cyan;
    "\e[36m#{self}\e[0m"
  end

  def gray;
    "\e[37m#{self}\e[0m"
  end
end


color = ARGV[0]
filename = ARGV[1]

unless ARGV.size == 2
  puts 'Wrong argumet'
  exit
end

unless String.valid_color?(color)
  puts 'Wrong color. Use black, red, green, brown, blue, magenta, cyan or gray'
  exit
end

unless File.exists?(filename)
  puts 'File not found'
  exit
end

File.open(filename, "r") do |f|
  f.each_line do |line|
    print line.to_s.send(color)
  end
end
