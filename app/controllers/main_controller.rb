class MainController < ApplicationController
  def main
    starttime = params[:starttime] ? params[:starttime] : '2015-01-01'
    endtime = params[:endtime] ? params[:endtime] : '2015-12-31'
    @params = { starttime: starttime, endtime: endtime }
  end
end
