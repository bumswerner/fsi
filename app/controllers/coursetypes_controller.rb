class CoursetypesController < ApplicationController
  before_action :set_coursetype, only: [:show, :edit, :update, :destroy]

  # GET /coursetypes
  # GET /coursetypes.json
  def index
    @coursetypes = Coursetype.all
  end

  # GET /coursetypes/1
  # GET /coursetypes/1.json
  def show
  end

  # GET /coursetypes/new
  def new
    @coursetype = Coursetype.new
  end

  # GET /coursetypes/1/edit
  def edit
  end

  # POST /coursetypes
  # POST /coursetypes.json
  def create
    @coursetype = Coursetype.new(coursetype_params)

    respond_to do |format|
      if @coursetype.save
        format.html { redirect_to @coursetype, notice: 'Coursetype was successfully created.' }
        format.json { render :show, status: :created, location: @coursetype }
      else
        format.html { render :new }
        format.json { render json: @coursetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursetypes/1
  # PATCH/PUT /coursetypes/1.json
  def update
    respond_to do |format|
      if @coursetype.update(coursetype_params)
        format.html { redirect_to @coursetype, notice: 'Coursetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursetype }
      else
        format.html { render :edit }
        format.json { render json: @coursetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursetypes/1
  # DELETE /coursetypes/1.json
  def destroy
    @coursetype.destroy
    respond_to do |format|
      format.html { redirect_to coursetypes_url, notice: 'Coursetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursetype
      @coursetype = Coursetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursetype_params
      params.require(:coursetype).permit(:name, :symbol, :description)
    end
end
