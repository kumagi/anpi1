# -*- coding: utf-8 -*-
class AnpiInfo < ActiveRecord::Base
  attr_accessible :contact, :hurt_info, :location_info, :syachiku, :syachiku_reason, :family_info, :member_info_id
  belongs_to :member_info
  def self.find_or_new_for_user(id)
    begin
      result = find.by_member_info_id(id)
    rescue => e
      result = new
      result.member_info_id = id
    end
    result
  end
  def syachiku_unknown?
    syachiku == 0
  end
  def syachiku_ready?
    syachiku == 1
  end
  def syachiku_damepo?
    syachiku == 2
  end
  def syachiku_to_s
    if syachiku.nil? || syachiku == 0
      "不明"
    elsif syachiku == 1
      "出社可"
    elsif syachiku == 2
      "出社不可"
    end
  end

  def family_info_to_s
    if family_info.nil? || family_info == 0
      "未登録"
    elsif syachiku == 1
      "確認済み"
    elsif syachiku == 2
      "未確認"
    end
  end
end
