class ChoresController < ApplicationController
  def index
    @chores = Chore.all
    @rewards = Reward.all
  end

    def destroy
    @chore = Chore.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to chores_url }
      format.json { head :no_content }
    end
  end

  def new
  	@chore = Chore.new
  end

def create
    @chore = Chore.new

    respond_to do |format|
      if @chore.save
        format.html { redirect_to chores_path }
        format.json { render :show, status: :created, location: @chore }
      else
        format.html { render :new }
        format.json { render json: @chore.errors, status: :unprocessable_entity }
      end
    end
  end


end
