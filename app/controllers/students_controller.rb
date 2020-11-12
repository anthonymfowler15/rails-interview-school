class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @teachers = Teacher.all

    if @student.update(student_params)
      redirect_to @student.teacher
    else
      render 'edit'
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :teacher_id)
  end
end
