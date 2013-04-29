class StudentsController < ApplicationController
  
  def index
  end

  def new
    @student = Student.new
    @student.build_contact_detail
    @student.build_admission
  end

  def create
    @student = Student.new params[:student]
    if @student.save
      redirect_to students_guardian_details_path(@student), :notice => "Student Record Saved Successfully. Please fill the Parent Details."
    else
      redirect_to new_student_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end
  
  def update
  end
  
  def destroy
  end

  def guardian_details
    @student = Student.find(params[:id])
    @student.guardians.build()
  end

  def edit_guardian_details
    @student = Student.find(params[:id])
    @guardian = @student.emergency_contact
  end

  def guardian_details_update
    @student = Student.find(params[:id])

    if @student.update_attributes(params[:student])
      redirect_to students_show_guardian_path(@student)
    else
      redirect_to students_guardian_details_path
    end
  end

  def show_guardian
    @student = Student.find(params[:id])
    @guardian = @student.guardians.last
  end

  def emergency_contact
    @student = Student.find(params[:id])
    @guardians = @student.guardians
  end

  def emergency_contact_update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to student_previous_data_path(@student)
    end
  end

  def previous_data
    @student = Student.find(params[:id])
    @student.build_education
    #@student.subjects.build()
  end
  
  def previous_data_update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to student_additional_details_path(@student)
    end
  end
  
  def additional_details 
    @student = Student.find(params[:id])
  end
    
  def additional_details_update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to student_profile_path(@student)
    end
  end  
  
  def profile
    @student = Student.find(params[:id])
    
  end
end
