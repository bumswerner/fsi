class User::SectionMaterialsController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/section_materials/1/1
  def index
  @materials = Material.where("lecture_id = ? AND section_id = ?",
                               params[:lecture_id], params[:id ])
    
    
  end
  
  # GET /user/section_materials/1/1/1
  def show
    
  end
  
end