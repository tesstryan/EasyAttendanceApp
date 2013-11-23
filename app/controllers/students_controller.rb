class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.profile_pic_url = params[:profile_pic_url]
    
    if @student.save
      redirect_to students_url
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(:id => params[:id])
  end

  def update
    @student = Student.find_by(:id => params[:id])
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.profile_pic_url = params[:profile_pic_url]
    
    if @student.save
      redirect_to students_url
    else
      render 'new'
    end
  end

  def destroy
    @student = Student.find_by(:id => params[:id])
    @student.destroy
    redirect_to students_url
  end
end
