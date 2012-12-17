# -*- coding: utf-8 -*-
class AnpiInfosController < ApplicationController
  # GET /anpi_infos
  # GET /anpi_infos.json
  def index
    @anpi_infos = AnpiInfo.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anpi_infos }
   end
  end

  def new
    @anpi_info = AnpiInfo.new
    @anpi_info[:member_info_id] = params[:member_id]
  end

  def edit
    pp params
    @anpi_info = AnpiInfo.find(params["anpi_id"].to_i)
  end

  def create
    @anpi_info = AnpiInfo.new(params[:anpi_info])
    if @anpi_info.save
      redirect_to root_path, notice: '安否情報が登録されました'
    else
      render action: "new"
    end
  end

  def update
    @anpi_info = AnpiInfo.find(params[:anpi_id])
    if @anpi_info.update_attributes(params[:anpi_info])
      redirect_to root_path, notice: '安否情報が更新されました'
    else
      render action: "edit"
    end
  end

  # DELETE /anpi_infos/1
  # DELETE /anpi_infos/1.json
  def destroy
    @anpi_info = AnpiInfo.find(params[:id])
    @anpi_info.destroy
    redirect_to anpi_infos_url
  end
end
