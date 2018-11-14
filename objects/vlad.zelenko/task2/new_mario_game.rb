require_relative "../../mario_game"

class NewMarioGame < MarioGame; end

mario20 = NewMarioGame.new(1, 2, 3, 4)

mario20.instance_eval do
  WIN = [
          "                  ####",
          "                  ####",
          "                     #",
          "                  ####",
          "                ########",
          "   ##         ############",
          "  ####      ################",
          "   ##     ####################",
          "####################################"
        ].freeze
   
  def you_win
    WIN.each {|a| puts a}
    # puts "\n
    #                     ####\n
    #                     ####\n
    #                        #\n
    #                     ####\n
    #                   ########\n
    #      ##         ############\n
    #     ####      ################\n
    #      ##     ####################\n
    #   ###################################\n 
    # "  
  end
end

# mario1.you_win
mario20.you_win