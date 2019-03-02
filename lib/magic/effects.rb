# frozen_string_literal: true

module Magic
  class Effects
    def initialize(dependencies = {})
      @dice = dependencies.fetch(:dice) do
        Dice.new
      end

      @effects = YAML.load_file('config/nlrme.yml')
    end

    def pick_random_effect
      @effects['effects'][@dice.roll]
    end
  end
end
