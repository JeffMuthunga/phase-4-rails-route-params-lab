class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
  def show
    student =  Student.find(params[:id])
    render json: student
  end

  def search
    students = Student.where(first_name: params[:value1] )
    render json: students
  end
end
