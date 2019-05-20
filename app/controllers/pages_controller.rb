class PagesController < ApplicationController
  def home
  end

  def data
    @data = Campsite.new
  end
end
