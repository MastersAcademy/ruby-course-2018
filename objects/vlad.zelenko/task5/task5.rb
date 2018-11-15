# class ColorText

#   HASH_COLOR = {
#     black:  30,
#     red:    31,
#     green:  32,
#     brown:  33,
#     blue:   34,
#     purple: 35,
#   }.freeze

#   def create_methods(method_name, text)
#     def define_method method_name do 
#       "\e[#{HASH_COLOR[method_name]}m#{text}\e[0m"
#     end
#   end
# end

# color_text = ColorText.new
# p color_text.red {"tetwtwe"}