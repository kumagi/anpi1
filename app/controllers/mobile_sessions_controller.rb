# -*- coding: utf-8 -*-
class MobileSessionsController < ApplicationController
  def index
    render "new"
  end

  def new
  end

  skip_filter :admin_signed_in?
  def create
    if params[:full_name] == ""
      redirect_to mobile_login_path,:alert => "フルネームを入力してください"
      return
    end
    if params[:birthday] == ""
      redirect_to mobile_login_path, :alert => "誕生日を入力してください"
      return
    end
    member = MemberInfo.find_by_full_name(params[:full_name])
    if member.nil? || member[:birthday] != params[:birthday]
      redirect_to mobile_login_path, :alert => "ユーザ名かPasswordが不正です"
    else
      session.delete :member_info_id
      session[:member_info_id] = member.id
      pp member
      pp current_member
      redirect_to mobile_edit_path, :notice => "ログインに成功しました"
    end
  end

  def delete
    session.delete :member_info_id
    redirect_to root_path, :notice => "ログアウトしました"
  end
end
