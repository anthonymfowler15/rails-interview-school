class StudentsController < ApplicationController

  #def index
  #  @teachers = Teacher.all
  #end
  
  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name)
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end  

end
