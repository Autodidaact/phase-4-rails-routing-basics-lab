class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.order(grade: :desc).all
    render json: grades
  end

  def highest_grade
    highest = Student.order(grade: :desc).all.limit(1)
    render json: highest
  end
end
