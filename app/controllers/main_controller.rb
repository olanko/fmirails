class MainController < ApplicationController
  def main
    startyear = params[:sy] ? params[:sy].to_i : DateTime.now.year - 1
    starttime = Date.new(startyear, 1, 1)
    endyear = params[:ey] ? params[:ey].to_i : DateTime.now.year
    endtime = Date.new(endyear, 12, 31)
    @params = { starttime: starttime, endtime: endtime }
  end
end
