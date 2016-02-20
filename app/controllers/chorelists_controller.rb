class ChorelistsController < ApplicationController
  before_action :set_chorelist, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @chorelists = ChoreList.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @chorelist = ChoreList.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @chorelist = ChoreList.new(chorelist_params)

    respond_to do |format|
      if @chorelist.save
        format.html { redirect_to @chorelist, notice: 'Member was successfully added.' }
        format.json { render :show, status: :created, location: @chorelist }
      else
        format.html { render :new }
        format.json { render json: @chorelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @chorelist.update(member_params)
        format.html { redirect_to @chorelist, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @chorelist }
      else
        format.html { render :edit }
        format.json { render json: @chorelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @chorelist.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chorelist
      @chorelist = ChoreList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chorelist_params
      params.require(:chorelist).permit(:name)
    end


end