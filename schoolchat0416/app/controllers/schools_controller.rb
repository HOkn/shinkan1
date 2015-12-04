class SchoolsController < ApplicationController
  def new
    @school = School.new
  end

  def create
    @school = School.new(params_school)
    if @school.save
      redirect_to schools_path
    end
  end

  def index
    @school = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(params_school)
      @school.save
      redirect_to school_path(@school)
    else
      render 'edit'
    end
  end


  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_path
  end

  private
  def params_school
    params.require(:school).permit(:id, :name)

  end

end
