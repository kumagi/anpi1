# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    begin
      if Admin.find(current_admin.id).nil?
      end
    rescue => e
      session.delete :admin_id
    end
    if admin_signed_in?
      @member_infos = MemberInfo.find(:all).sort{|a,b| b.role.power <=> a.role.power}
    end
    @searched = {}
  end
  def search
    if params[:name] != ""
      @member_infos = MemberInfo.where :full_name => params[:name]
      if @member_infos == nil
        @member_infos = []
        flash[:alert] = "社員 #{params[:name]} は見つかりませんでした"
      end
      @searched = {}
      @searched["name"] = params[:name]
      render "index"
      return
    end
    if params[:project] != ""
      @member_infos = MemberInfo.where :project_id => params[:project]
      @searched = {}
      @searched["project"] = Project.find(params[:project]).p_name
      flash[:notice] = "#{@searched["project"]} 部を検索しました"
      render "index"
      return
    end
    if params[:team] != ""
      @member_infos = MemberInfo.where :team_id => params[:team]
      @searched = {}
      @searched["team"] = Team.find(params[:team]).team_name
      flash[:notice] = "#{@searched["team"]} 課を検索しました"
      render "index"
      return
    end
    flash[:alert] = "検索条件を入力してください"
    redirect_to root_path
  end
end
