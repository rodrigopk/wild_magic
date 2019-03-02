# frozen_string_literal: true

require_relative './dice'

module Magic
  class Effects
    MAGICAL_EFFECTS_YAML_FILE = 'config/nlrme.yml'

    def initialize(dependencies = {})
      @dice = dependencies.fetch(:dice) do
        Magic::Dice.new
      end

      @effect_list = YAML.load_file(MAGICAL_EFFECTS_YAML_FILE)
    end

    def pick_random_effect
      @effect_list['effects'][@dice.roll]
    end
  end
end
