class ModuleCategoriesController < ApplicationController
  before_action :set_module_category, only: [:show, :edit, :update, :destroy]

  # GET /module_categories
  # GET /module_categories.json
  def index
    @module_categories = ModuleCategory.all
  end

  # GET /module_categories/1
  # GET /module_categories/1.json
  def show
  end

  # GET /module_categories/new
  def new
    @module_category = ModuleCategory.new
  end

  # GET /module_categories/1/edit
  def edit
  end

  # POST /module_categories
  # POST /module_categories.json
  def create
    @module_category = ModuleCategory.new(module_category_params)

    respond_to do |format|
      if @module_category.save
        format.html { redirect_to @module_category, notice: 'Module category was successfully created.' }
        format.json { render :show, status: :created, location: @module_category }
      else
        format.html { render :new }
        format.json { render json: @module_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module_categories/1
  # PATCH/PUT /module_categories/1.json
  def update
    respond_to do |format|
      if @module_category.update(module_category_params)
        format.html { redirect_to @module_category, notice: 'Module category was successfully updated.' }
        format.json { render :show, status: :ok, location: @module_category }
      else
        format.html { render :edit }
        format.json { render json: @module_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_categories/1
  # DELETE /module_categories/1.json
  def destroy
    @module_category.destroy
    respond_to do |format|
      format.html { redirect_to module_categories_url, notice: 'Module category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_category
      @module_category = ModuleCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def module_category_params
      params.require(:module_category).permit(:name, :description)
    end
end
