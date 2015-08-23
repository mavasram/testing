class RamController < ApplicationController

  def index
  	@ram = Ram.all
  end

end
