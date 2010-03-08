require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Car.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Car.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Car.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to car_url(assigns(:car))
  end
  
  def test_edit
    get :edit, :id => Car.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Car.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Car.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Car.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Car.first
    assert_redirected_to car_url(assigns(:car))
  end
  
  def test_destroy
    car = Car.first
    delete :destroy, :id => car
    assert_redirected_to cars_url
    assert !Car.exists?(car.id)
  end
end
