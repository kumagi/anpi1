module ApplicationHelper
  def time_format(time)
    time.strftime("%Y-%m-%d %H:%M:%S")
  end

  # icons
  def edit_icon
    "<i class='icon-edit'></i>".html_safe
  end
  def delete_icon
    "<i class='icon-trash'></i>".html_safe
  end
  def add_icon
    "<i class='icon-plus'></i>".html_safe
  end
  def right_arrow
    "<i class='icon-chevron-right'></i>".html_safe
  end
  def search_icon
    "<i class='icon-search'></i>".html_safe
  end

  def unknown_members_list
    []
  end
end
