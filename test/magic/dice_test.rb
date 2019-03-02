require 'test_helper'
require 'minitest/autorun'

require_relative '../../lib/magic/dice'

module Magic
  class DiceTest < ActiveSupport::TestCase
    test 'creates a dice' do
      Magic::Dice.new
    end

    test 'rolls a random number' do
      dice = Magic::Dice.new

      dice.stub(:rand, 1) do
        assert_equal('1111', dice.roll)
      end
    end
  end
end
