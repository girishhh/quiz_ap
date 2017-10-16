class CommentsController < ApplicationController

	def index		
	  p "88888888888"
	  p params
	end

	def new
		p "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
		p "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
		redirect_to :back,fallback_location: root_path
	end

	def show
	end

	def create
	end

	def update
	end

	def edit
		
	end

	def destroy
	end


end