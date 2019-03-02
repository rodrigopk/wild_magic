# frozen_string_literal: true

module Magic
  class Dice
    def roll
      Array.new(4) { rand(10) }.join
    end
  end
end
