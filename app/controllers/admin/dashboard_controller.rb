class Admin::DashboardController < ApplicationController
  def index
    @produces = Produce.all
  end
end
