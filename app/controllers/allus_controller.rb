class AllusController < ApplicationController
  before_action :set_allu, only: [:show, :edit, :update, :destroy]

 
    def print_pa
      @name = params["user"]["name"]
      @email = params["user"]["email"]
      @gender =params["user"]["gender"]
    end
  def index
    @allus = Allu.all
  end

   def show
  end

  def new
    @allu = Allu.new
  end

  def edit
  end

  def create
    @allu = Allu.new(allu_params)

    respond_to do |format|
      if @allu.save
        format.html { redirect_to @allu, notice: 'allu was successfully created.' }
        format.json { render :show, status: :created, location: @allu }
      else
        format.html { render :new }
        format.json { render json: @allu.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @allu.update(allu_params)
        format.html { redirect_to @allu, notice: 'allu was successfully updated.' }
        format.json { render :show, status: :ok, location: @allu }
      else
        format.html { render :edit }
        format.json { render json: @allu.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @allu.destroy
    respond_to do |format|
      format.html { redirect_to blocks_url, notice: 'allu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
      def set_allu
      @allu = Allu.find(params[:id])
    end

    def allu_params
      params.require(:allu).permit(:Name, :Email, :Gender )
    end
end
