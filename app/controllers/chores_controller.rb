class ChoresController < ApplicationController
  def index
    @chores = Chore.all
    @rewards = Reward.all
  end
end
