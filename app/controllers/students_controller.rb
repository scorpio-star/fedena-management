class StudentsController < ApplicationController
  
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new params[:student]
    if @student.save
      redirect_to student_guardian_new_path
    else
      render new
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
