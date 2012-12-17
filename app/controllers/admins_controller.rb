# -*- coding: utf-8 -*-
class AdminsController < ApplicationController
  def new
  end

  def list
    @admins = Admin.find :all
    render "list"
  end

  def view
    render "show"
  end

  def destroy
    target = Admin.find(params[:id])
    target_name = target.name
    Admin.delete params[:id]
    redirect_to admins_list_path, :notice => "#管理者 {target.name} を削除しました"
  end

  def create
    # パスワード一致チェック
    if params[:password] != params[:password_confirmation]
      redirect_to admins_new_path, :alert => "パスワードが一致しません"
      return
    end

    admin = Admin.new(:name => params[:name], :password => params[:password], :password_confirmation=>params[:password_confirmation])
    begin
      if admin.save
        redirect_to admins_list_path, :alert => nil, :notice => "管理者 #{params[:name]} の登録に成功しました"
        return
      end
    rescue => e
      p e
      error_reason = "既に登録されています"
    end
    redirect_to admins_new_path, :alert => "登録に失敗しました #{error_reason}"
  end

  def update
    if params[:password] != params[:password_confirmation]
      redirect_to admin_path(current_admin.id), :alert => "パスワードが一致しません"
      return
    end
    if admin = current_admin.try(:authenticate, params[:old_password])
      current_admin.password = params[:password]
      current_admin.password_confirmation = params[:password_confirmation]
      current_admin.save
      redirect_to admin_path(current_admin.id), :notice => "パスワードを変更しました"
      return
    else
      redirect_to admin_path(current_admin.id), :alert => "パスワードが間違っています"
      return
    end
  end
end
