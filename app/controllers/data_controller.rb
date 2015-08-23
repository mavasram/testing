class DataController < ApplicationController

    def data_pa
    	@name = params["user"]["name"]
  		@subject = params["user"]["email"]
  	end
  	def dataform
  	end 	
 
end
