require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Subject.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Subject.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Subject.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to subject_url(assigns(:subject))
  end
  
  def test_edit
    get :edit, :id => Subject.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Subject.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Subject.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Subject.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Subject.first
    assert_redirected_to subject_url(assigns(:subject))
  end
  
  def test_destroy
    subject = Subject.first
    delete :destroy, :id => subject
    assert_redirected_to subjects_url
    assert !Subject.exists?(subject.id)
  end
end
