module StudentsHelper
  def student_params
    params.require(:student).permit(:name, :age, :image)
  end
end
