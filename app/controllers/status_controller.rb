class StatusController < ApplicationController
  def index
  end
  def delete_anpi
    AnpiInfo.delete_all
    redirect_to root_path
  end
end
