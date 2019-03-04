class ProjectCoreController < ApplicationController

	def index
		# Values are copied from the controller to the view
    	@title = "Home"
  	end

  	def shop
    	@title = "Shop"
    end

  	def discussion
    	@title = "Discussion"
  	end
end
