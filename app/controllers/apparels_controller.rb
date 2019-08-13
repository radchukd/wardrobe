class ApparelsController < ApplicationController
  before_action :set_apparel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /apparels
  # GET /apparels.json
  def index
    @apparels = Apparel.all.order("created_at desc")
  end

  # GET /apparels/1
  # GET /apparels/1.json
  def show
  end

  # GET /apparels/new
  def new
    @apparel = current_user.apparels.build
  end

  # GET /apparels/1/edit
  def edit
  end

  # POST /apparels
  # POST /apparels.json
  def create
    @apparel = current_user.apparels.build(apparel_params)

    respond_to do |format|
      if @apparel.save
        format.html { redirect_to @apparel, notice: 'Apparel was successfully created.' }
        format.json { render :show, status: :created, location: @apparel }
      else
        format.html { render :new }
        format.json { render json: @apparel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apparels/1
  # PATCH/PUT /apparels/1.json
  def update
    respond_to do |format|
      if @apparel.update(apparel_params)
        format.html { redirect_to @apparel, notice: 'Apparel was successfully updated.' }
        format.json { render :show, status: :ok, location: @apparel }
      else
        format.html { render :edit }
        format.json { render json: @apparel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apparels/1
  # DELETE /apparels/1.json
  def destroy
    @apparel.destroy
    respond_to do |format|
      format.html { redirect_to apparels_url, notice: 'Apparel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apparel
      @apparel = Apparel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apparel_params
      params.require(:apparel).permit(:title, :description, :gender, :style, :price, :image)
    end
end
