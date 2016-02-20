class ChorelistsController < ApplicationController

  def index
    @chorelists = ChoreList.all
  end

  def show
    @chorelists = ChoreList.find(params[:id])
  end

    def destroy
    @cl = ChoreList.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to chorelists_url }
      format.json { head :no_content }
    end
  end

  def new
    @chorelists = ChoreList.new
  end

def create
    @cl = ChoreList.new(chorelist_params)

    respond_to do |format|
      if @chorelist.save
        format.html { redirect_to chorelist_path }
        format.json { render :show, status: :created, location: @chorelist }
      else
        format.html { render :new }
        format.json { render json: @chorelist.errors, status: :unprocessable_entity }
      end
    end
  end

    def chorelist_params
      params.require(:chorelist).permit(:name)
    end

end
