require 'test_helper'

class AssessmentformsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Assessmentform.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Assessmentform.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Assessmentform.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to assessmentform_url(assigns(:assessmentform))
  end
  
  def test_edit
    get :edit, :id => Assessmentform.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Assessmentform.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Assessmentform.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Assessmentform.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Assessmentform.first
    assert_redirected_to assessmentform_url(assigns(:assessmentform))
  end
  
  def test_destroy
    assessmentform = Assessmentform.first
    delete :destroy, :id => assessmentform
    assert_redirected_to assessmentforms_url
    assert !Assessmentform.exists?(assessmentform.id)
  end
end
