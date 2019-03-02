# frozen_string_literal: true

require_relative '../../lib/magic/effects'

class HomeController < ApplicationController
  def index
    set_current_magic_effect
  end

  def roll
    set_current_magic_effect

    render js: "$('#magic-effect').text(\"#{@current_effect}\");"
  end

  private

  def set_current_magic_effect
    @current_effect = random_magic_effect
  end

  def random_magic_effect
    Magic::Effects.new.pick_random_effect
  end
end
