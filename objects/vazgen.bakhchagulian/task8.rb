class Game
  attr_accessor :level_cleared
  def initialize(level, player)
    @level_cleared = nil
    @arr = []
    File.readlines(level).each do |f|
      @arr.push(f.chars)
    end
  end

  def forward
    if @arr[4].first != '#'
      @arr.each do |f|
        f.shift
      end
    else
      @level_cleared = true
    end
  end

  def show
    @arr.join('')
  end
end

a=Game.new('level.txt', 'player.txt')
puts a.show
f=nil

while !a.level_cleared
  while !f
    tty_param = `stty -g`
    system 'stty raw'
    f = IO.read '/dev/stdin', 1
    system "stty #{tty_param}"
    if f=='d'
      a.forward
      puts a.show
    end
    f=nil
  end
end