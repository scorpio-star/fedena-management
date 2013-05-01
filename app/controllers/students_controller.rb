class StudentsController < ApplicationController
  
  layout :specific_layout

  def specific_layout
    if ["edit_guardian_details"].include?(params[:action])
      'guardian'
    else
      'application'
    end
  end


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
      redirect_to new_guardian_path(@student), :notice => "Student Record Saved Successfully. Please fill the Parent Details."
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

  
#  def edit_guardian_details
 #   @student = Student.find(params[:id])
 #   @guardian = @student.guardians.find(params[:guardian_id])
 # end

 # def guardian_details_update
  #  @student = Student.find(params[:id])

   # if @student.update_attributes(params[:student])
    #  redirect_to students_show_guardian_path(@student)
    #else
     # redirect_to students_guardian_details_path
    #end
  #end

 # def show_guardian
 #   @student = Student.find(params[:id])
 #   @guardian = @student.guardians.last
 # end

  def emergency_contact
    @student = Student.find(params[:id])
    @guardians = @student.guardians
    @emergency_contact = @student.emergency_contact.present?
  end

  def emergency_contact_update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      if params[:emergency_contact]
        redirect_to student_profile_path(@student)
      else
        redirect_to student_previous_data_path(@student)
      end
    end
  end

  def show_emergency_contact
    @student = Student.find(params[:id])
    @guardian = @student.emergency_contact
  end

  def previous_data
    @student = Student.find(params[:id])
    @student.build_education
    #@student.subjects.build()
    @previous_data = @student.education.present?
  end
  
  def previous_data_update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      if params[:additional_data].present? || params[:previous_data].present?
        redirect_to student_profile_path(@student)
      else
        redirect_to student_additional_details_path(@student)
      end
    end
  end
  
  def additional_details 
    @student = Student.find(params[:id])
    @additional_data = @student.passport.present?
  end
  
  def profile
    @student = Student.find(params[:id])
  end

  def generate_student_report
    @student = Student.find(params[:id])
    generate_report(@student)
    redirect_to request.referrer
  end

  private
  def generate_report(student)
    pdf = render_to_string  :pdf => "Student Report",
                            :template => 'students/student_report.pdf.erb',
                            :margin => {:top => 0, :bottom => 0}

    save_path = student.student_report_path
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
  end
end
