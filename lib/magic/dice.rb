module Magic
  class Dice
    def roll
     4.times.map{ rand(10) }.join
    end
  end
end
