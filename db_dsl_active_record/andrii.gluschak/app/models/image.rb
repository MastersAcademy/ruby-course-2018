class Image < ActiveRecord::Base
  belongs_to :imageable, polimorphic: true
end
