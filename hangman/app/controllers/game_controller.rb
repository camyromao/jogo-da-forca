class GameController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @game = Game.new("steph")
  end

  def guess
    @game.guess "s"
  end
end
