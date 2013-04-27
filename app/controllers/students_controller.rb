class StudentsController < ApplicationController
  
  def index
  end

  def new
    @student = Student.new
    @student.build_contact_detail
  end

  def create
    @student = Student.new params[:student]
    @student.build_guardians
    if @student.save
      redirect_to students_guardian_details_path(@student), :notice => "Student Record Saved Successfully. Please fill the Parent Details."
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

  def guardian_details

    @student = Student.find(params[:id])
#    @student.build_guardians
  end

  def guardian_details_update
    @student = Student.find(params[:id])
    redirect_to
  end

end
