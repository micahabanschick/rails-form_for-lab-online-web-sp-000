class StudentsController < ActionController::Base

  def index
    @students = student.all
  end

  def show
    @student = student.find(params[:id])
  end

  def new
    @student = student.new
  end

  def create
    @student = student.new
    @student.title = params[:title]
    @student.description = params[:description]
    @student.save
    redirect_to student_path(@student)
  end

  # add edit and update methods here
  def edit
    @student = student.find(params[:id])
  end

  def update
    @student = student.find(params[:id])
    @student.update(title: params[:student][:title], description: params[:student][:description])
    redirect_to student_path(@student)
  end

end
