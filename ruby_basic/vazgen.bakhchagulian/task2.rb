color_codes = {
    :black => 30,
    :red => 31,
    :green => 32,
    :yellow => 33,
    :blue => 34,
    :pink => 35,
    :light_blue => 36,
    :grey => 37
}

File.open(ARGV[1]) do |f|
  while (line = f.gets)
    puts "\e[#{color_codes[ARGV[0].gsub(/\s+/,"_").downcase.to_sym]}m#{line}\e[0m"
  end
end