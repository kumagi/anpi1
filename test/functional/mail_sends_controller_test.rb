require 'test_helper'

class MailSendsControllerTest < ActionController::TestCase
  setup do
    @mail_send = mail_sends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_sends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_send" do
    assert_difference('MailSend.count') do
      post :create, mail_send: {  }
    end

    assert_redirected_to mail_send_path(assigns(:mail_send))
  end

  test "should show mail_send" do
    get :show, id: @mail_send
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_send
    assert_response :success
  end

  test "should update mail_send" do
    put :update, id: @mail_send, mail_send: {  }
    assert_redirected_to mail_send_path(assigns(:mail_send))
  end

  test "should destroy mail_send" do
    assert_difference('MailSend.count', -1) do
      delete :destroy, id: @mail_send
    end

    assert_redirected_to mail_sends_path
  end
end
