require 'test_helper'

class MemberInfosControllerTest < ActionController::TestCase
  setup do
    @member_info = member_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_info" do
    assert_difference('MemberInfo.count') do
      post :create, member_info: { birthday: @member_info.birthday, full_name: @member_info.full_name, gender: @member_info.gender, project_id: @member_info.project_id, role_id: @member_info.role_id, team_id: @member_info.team_id, user_pass: @member_info.user_pass, user_pass_salt: @member_info.user_pass_salt }
    end

    assert_redirected_to member_info_path(assigns(:member_info))
  end

  test "should show member_info" do
    get :show, id: @member_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_info
    assert_response :success
  end

  test "should update member_info" do
    put :update, id: @member_info, member_info: { birthday: @member_info.birthday, full_name: @member_info.full_name, gender: @member_info.gender, project_id: @member_info.project_id, role_id: @member_info.role_id, team_id: @member_info.team_id, user_pass: @member_info.user_pass, user_pass_salt: @member_info.user_pass_salt }
    assert_redirected_to member_info_path(assigns(:member_info))
  end

  test "should destroy member_info" do
    assert_difference('MemberInfo.count', -1) do
      delete :destroy, id: @member_info
    end

    assert_redirected_to member_infos_path
  end
end
