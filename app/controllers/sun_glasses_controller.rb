class SunGlassesController < ApplicationController
  before_action :set_sun_glass, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /sun_glasses
  # GET /sun_glasses.json
  def index
    @sun_glasses = SunGlass.all.order("created_at desc")
  end

  # GET /sun_glasses/1
  # GET /sun_glasses/1.json
  def show
  end

  # GET /sun_glasses/new
  def new
    @sun_glass = current_user.sun_glasses.build
  end

  # GET /sun_glasses/1/edit
  def edit
  end

  # POST /sun_glasses
  # POST /sun_glasses.json
  def create
    @sun_glass = SunGlass.new(sun_glass_params)

    respond_to do |format|
      if @sun_glass.save
        format.html { redirect_to @sun_glass, notice: 'Sun glass was successfully created.' }
        format.json { render :show, status: :created, location: @sun_glass }
      else
        format.html { render :new }
        format.json { render json: @sun_glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sun_glasses/1
  # PATCH/PUT /sun_glasses/1.json
  def update
    respond_to do |format|
      if @sun_glass.update(sun_glass_params)
        format.html { redirect_to @sun_glass, notice: 'Sun glass was successfully updated.' }
        format.json { render :show, status: :ok, location: @sun_glass }
      else
        format.html { render :edit }
        format.json { render json: @sun_glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sun_glasses/1
  # DELETE /sun_glasses/1.json
  def destroy
    @sun_glass.destroy
    respond_to do |format|
      format.html { redirect_to sun_glasses_url, notice: 'Sun glass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sun_glass
      @sun_glass = SunGlass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sun_glass_params
      params.require(:sun_glass).permit(:brand, :frame, :description, :condition, :title, :price, :image)
    end
end
