class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end
  
  def show
    @subject = Subject.find(params[:id])
  end
  
  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new(params[:subject])
    if @subject.save
      flash[:notice] = "Successfully created subject."
      redirect_to @subject
    else
      render :action => 'new'
    end
  end
  
  def edit
    @subject = Subject.find(params[:id])
  end
  
  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(params[:subject])
      flash[:notice] = "Successfully updated subject."
      redirect_to @subject
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Successfully destroyed subject."
    redirect_to subjects_url
  end
end
