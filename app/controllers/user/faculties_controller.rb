class User::FacultiesController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/faculties/
  def index
    @faculties = Faculty.all
  end
  
  # GET user/faculties/1
  def show
    @faculty = Faculty.find(params[:id])
  end

end