class SubjectsController < ApplicationController
  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new()
  end

  def create
    @subject = Subject.new(require_params)
    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(require_params)
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy

  end

  private

  def require_params
    params.require(:subject).permit(:name, :position, :visible)
  end

end
