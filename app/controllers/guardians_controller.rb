 class GuardiansController < ApplicationController
  
  def index
  end

  def new
    @student = Student.find(params[:id])
    @student.guardians.build()
  end

  def create
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to show_guardian_path(@student)
    else
      redirect_to new_guardian_path(@student)
    end
  end

  def edit
    @student = Student.find(params[:id])
    @guardian = @student.guardians.find(params[:guardian_id])
    @edit = true
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to student_profile_path(@student)
    else
      redirect_to edit_guardian_path(@student)
    end
  end

  # displaying guardian which is saved after create
  def show
    @student = Student.find(params[:id])
    @guardian = @student.guardians.last
  end

end