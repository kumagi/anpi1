require 'test_helper'

class AnpiInfosControllerTest < ActionController::TestCase
  setup do
    @anpi_info = anpi_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anpi_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anpi_info" do
    assert_difference('AnpiInfo.count') do
      post :create, anpi_info: { contact: @anpi_info.contact, hurt_info: @anpi_info.hurt_info, location_info: @anpi_info.location_info, syachiku: @anpi_info.syachiku, syachiku_readon: @anpi_info.syachiku_readon }
    end

    assert_redirected_to anpi_info_path(assigns(:anpi_info))
  end

  test "should show anpi_info" do
    get :show, id: @anpi_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anpi_info
    assert_response :success
  end

  test "should update anpi_info" do
    put :update, id: @anpi_info, anpi_info: { contact: @anpi_info.contact, hurt_info: @anpi_info.hurt_info, location_info: @anpi_info.location_info, syachiku: @anpi_info.syachiku, syachiku_readon: @anpi_info.syachiku_readon }
    assert_redirected_to anpi_info_path(assigns(:anpi_info))
  end

  test "should destroy anpi_info" do
    assert_difference('AnpiInfo.count', -1) do
      delete :destroy, id: @anpi_info
    end

    assert_redirected_to anpi_infos_path
  end
end
