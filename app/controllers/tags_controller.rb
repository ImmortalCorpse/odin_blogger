class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag= Tag.find(params[:id])
		flash.notice = "tag '#{@tag.name}' removed!"
		@tag.destroy
		
		redirect_to tags_path
	end

end
