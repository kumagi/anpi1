# -*- coding: utf-8 -*-
class MemberInfosController < ApplicationController
  def show
    redirect_to root_path
  end

  def new
    @member_info = MemberInfo.new
    render "new"
  end

  def edit
    @member_info = MemberInfo.find(params[:id])
  end

  def create
    @member_info = MemberInfo.new(params[:member_info])
    if @member_info.save
      redirect_to root_path, notice: '社員の登録に成功しました'
    else
      render action: "new", alert: '社員の登録に失敗しました'
    end

  end

  def create_anpi
    @anpi_info = AnpiInfo.new(params[:anpi_info].merge({:member_info_id=>params[:member_id]}))
    if @anpi_info.save
      redirect_to root_path, notice: '安否情報が登録されました'
    else
      render action: "new"
    end
  end

  def update
    @member_info = MemberInfo.find(params[:id])
    if @member_info.update_attributes(params[:member_info])
      redirect_to root_path, notice: '社員情報の更新に成功しました'
    else
      render action: "edit"
    end
  end

  def destroy
    @member_info = MemberInfo.find(params[:id])
    @member_info.destroy
    redirect_to root_path
  end
end
