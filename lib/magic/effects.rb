# frozen_string_literal: true

require 'wild_dice'

module Magic
  class Effects
    MAGICAL_EFFECTS_YAML_FILE = 'config/nlrme.yml'

    def initialize(dependencies = {})
      @dice = dependencies.fetch(:dice) do
        Wild::Dice.new
      end

      @effect_list = YAML.load_file(MAGICAL_EFFECTS_YAML_FILE)
    end

    def pick_random_effect
      magical_effects[@dice.roll]
    end

    def magical_effects
      @effect_list['effects']
    end
  end
end
