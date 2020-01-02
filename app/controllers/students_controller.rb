class StudentsController < ApplicationController
  def index
    @student = Student.new
    @students = Student.all
  end

  def new
    @student = Student.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @student = Student.create(params.require(:student).permit(:name, :age, :image))
    if @student.valid?
      redirect_to students_path
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to students_path
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @stud = Student.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    student = Student.find(params[:id])
    student.update_attributes(student_params)
    redirect_to students_path

    #respond_to do |format|
    #  format.html
    #  format.js
    #end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit( :age)
  end
end
