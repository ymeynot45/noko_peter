class NokoPeterController < ApplicationController
  def index
    @sites = Site.all
  end

end
