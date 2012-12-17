# -*- coding: utf-8 -*-
class MobileController < ApplicationController
  skip_filter :admin_signed_in?
  def edit
    pp current_member
    redirect_to mobile_login_path, :alert => "ログインしてください" if current_member.nil?
    @anpi_info = AnpiInfo.find_by_member_info_id(current_member)
    pp @anpi_info
    unless @anpi_info.nil?
      render "edit"
    else
      @anpi_info = AnpiInfo.new
      @anpi_info[:member_info_id] = current_member.id
      render "new"
    end
  end
  def create
    pp params
    @anpi_info = AnpiInfo.new
    @anpi_info["syachiku"] = params["syachiku"]
    @anpi_info["hurt_info"] = params["hurt_info"]
    @anpi_info["family_info"] = params["family_info"]
    @anpi_info["location_info"] = params["location_info"]
    @anpi_info["syachiku_reason"] = params["syachiku_reason"]
    @anpi_info["member_info_id"] = current_member.id
    begin
      @anpi_info.save
    rescue => e
      redirect_to mobile_edit_path, :alert => "情報が不完全です"
      return
    end
    redirect_to mobile_thanks_path
  end
  def update
    @anpi_info = AnpiInfo.find_by_member_info_id(current_member.id)
    status = {}
    status["syachiku"] = params["syachiku"]
    status["hurt_info"] = params["hurt_info"]
    status["family_info"] = params["family_info"]
    status["location_info"] = params["location_info"]
    status["syachiku_reason"] = params["syachiku_reason"]
    status["member_info_id"] = current_member.id
    begin
      @anpi_info.update_attributes(status)
    rescue => e
      puts "error!"
      pp e
      redirect_to mobile_edit_path, :alert => "情報が不完全です"
      return
    end
    redirect_to mobile_thanks_path
  end
  def thanks
  end

  def put
  end
end
