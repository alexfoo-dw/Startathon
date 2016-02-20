class RewardsController < ApplicationController

  def index
    @rewards = Reward.all
  end

  def show
  	@reward = Reward.find(params[:id])
  end

  def new
  	@reward = Reward.new
  end

   def destroy
    @reward = Reward.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to chores_path }
      format.json { head :no_content }
    end
  end

  def create
    @reward = Reward.new

    respond_to do |format|
      if @reward.save
        format.html { redirect_to chores_path }
        format.json { render :show, status: :created, location: @reward }
      else
        format.html { render :new }
        format.json { render json: @reward.errors, status: :unprocessable_entity }
      end
    end
end

end
