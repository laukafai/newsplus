class PagesController < ApplicationController
	def index
		@links = Link.all
		@links = Link.paginate(:page => params[:page], :per_page => 3)
	end
end
