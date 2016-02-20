class ChorelistsController < ApplicationController
  def index
    @chorelists = ChoreList.all
  end

  def destroy
    @chorelist.destroy
  end

end
