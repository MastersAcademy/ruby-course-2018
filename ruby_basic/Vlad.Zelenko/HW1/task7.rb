# p [1,4,6,7,8,9,23,6,56].sample
class RandNumberArray
  def randNumbArr(*arr)
    arr.sample
  end
end

rand_numb = RandNumberArray.new
p rand_numb.randNumbArr(1,4,6,7,8,9,23,6,56)