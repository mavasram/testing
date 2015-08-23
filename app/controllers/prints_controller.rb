class PrintsController < ApplicationController

    def print_pa
    	@name = params["user"]["name"]
  		@subject = params["user"]["email"]
  	end
  	def newform
  	end 	
 
end
