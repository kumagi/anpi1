# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
  before_filter :admin_signed_in?, :only =>[:delete]

  def index
    render "new"
  end

  def new
  end

  skip_filter :admin_signed_in?
  def create
    if admin = Admin.find_by_name(params[:name]).try(:authenticate, params[:password])
      session[:admin_id] = admin.id
      redirect_to root_path, :notice => "ログインに成功しました"
    else
      render root_path, :alert => "ユーザ名かPasswordが不正です"
    end
  end

  def delete
    session.delete :admin_id
    redirect_to root_path, :notice => "ログアウトしました"
  end
end
