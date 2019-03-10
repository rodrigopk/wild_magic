# frozen_string_literal: true

require 'test_helper'
require 'minitest/autorun'

require_relative '../../lib/magic/effects'

module Magic
  class EffectsTest < ActiveSupport::TestCase
    test 'injects dependencies' do
      Magic::Effects.new
    end

    test 'picks random magical effect' do
      mock_dice = Minitest::Mock.new
      mock_dice.expect :roll, '1111'

      effects = Magic::Effects.new(dice: mock_dice)
      assert_equal('Caster is chained to an anvil', effects.pick_random_effect)
    end

    test 'has 10_000 magical effects' do
      effects = Magic::Effects.new

      magical_effects = effects.magical_effects
      assert_equal(10_000, magical_effects.count)
    end
  end
end
