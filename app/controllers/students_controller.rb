class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(params.require(:student).permit(:student_type, :name, :teacher_id))
      redirect_to @student
    else
      redirect_to @student     
    end
  end


end
