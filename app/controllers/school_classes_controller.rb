class SchoolClassesController < ActionController::Base

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = school_class.find(params[:id])
  end

  def new
    @school_class = school_class.new
  end

  def create
    @school_class = school_class.new
    @school_class.title = params[:title]
    @school_class.description = params[:description]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  # add edit and update methods here
  def edit
    @school_class = school_class.find(params[:id])
  end

  def update
    @school_class = school_class.find(params[:id])
    @school_class.update(title: params[:school_class][:title], description: params[:school_class][:description])
    redirect_to school_class_path(@school_class)
  end

end
