class AssessmentformsController < ApplicationController
  def index
    @assessmentforms = Assessmentform.all
  end
  
  def show
    @assessmentform = Assessmentform.find(params[:id])
  end
  
  def new
    @assessmentform = Assessmentform.new
  end
  
  def create
    @assessmentform = Assessmentform.new(params[:assessmentform])
    if @assessmentform.save
      UserMailer.deliver_registration_confirmation(@assessmentform)
      flash[:notice] = "Successfully created assessmentform."
      redirect_to @assessmentform
    else
      render :action => 'new'
    end
  end
  
  def edit
    @assessmentform = Assessmentform.find(params[:id])
  end
  
  def update
    @assessmentform = Assessmentform.find(params[:id])
    if @assessmentform.update_attributes(params[:assessmentform])
      flash[:notice] = "Successfully updated assessmentform."
      redirect_to @assessmentform
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @assessmentform = Assessmentform.find(params[:id])
    @assessmentform.destroy
    flash[:notice] = "Successfully destroyed assessmentform."
    redirect_to assessmentforms_url
  end
end
