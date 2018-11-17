require_relative './console_io'

class Mario
  PERSON_WIDTH = 4
  PYRAMID_WIDTH = 20
  DISTANCE = 50
  FLAG_OFFSET = DISTANCE + (PYRAMID_WIDTH / 2) - 3

  attr_accessor :offset

  def initialize
    @offset = 0
    render
    on_input until is_end?
    render_final
  end

  def is_end?
    offset > DISTANCE - 9
  end

  def on_input
    readed_char = ConsoleIO::read_char

    case readed_char
    when ConsoleIO::BUTTONS[:ctrl_c]
      puts "EXIT"
      exit 0
    when ConsoleIO::BUTTONS[:left]
      @offset -= 1
    when ConsoleIO::BUTTONS[:right]
      @offset += 1
    end

    render
  end

  def render
    unless is_end?
      ConsoleIO::clear_screen
      puts "\n" * 4
    end

    pyramid_top_offset = ' ' * DISTANCE

    puts pyramid_top_offset + '        ####'
    puts pyramid_top_offset + '      ########'

    person_offset = ' ' * offset
    pyramid_offset = ' ' * (DISTANCE - offset - PERSON_WIDTH)

    puts person_offset + ' ## ' + pyramid_offset + '    ############'
    puts person_offset + '####' + pyramid_offset + '  ################'
    puts person_offset + ' ## ' + pyramid_offset + '####################'
    puts '#' * (DISTANCE + PYRAMID_WIDTH * 2)
  end

  def render_final
    flag_chars_offset = ' ' * FLAG_OFFSET

    4.times do |frame_number|
      ConsoleIO::clear_screen

      puts "\n" * (4 - frame_number)

      frame_number.times do |flag_height|
        if flag_height != 2
          puts flag_chars_offset + '####'
        else
          puts flag_chars_offset + '   #'
        end
      end

      render

      sleep 0.3
    end
  end
end

Mario.new
