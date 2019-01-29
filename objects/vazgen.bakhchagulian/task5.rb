module Colorize
  COLOR_CODES = {
      black: 30,
      red: 31,
      green: 32,
      yellow: 33,
      blue: 34,
      pink: 35,
      light_blue: 36,
      grey: 37,
      gray: 37
  }.freeze

  COLOR_CODES.each do |key, value|
    define_method key do
      # Using puts directly in method, because colorization is not usable beyond UNIX console
      puts "\e[#{value}m#{self}\e[0m"
    end
  end
end


class String
  include Colorize
end

ARGV[1].send(ARGV[0].gsub(/\s+/,"_"))