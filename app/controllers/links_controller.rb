class LinksController < ApplicationController
  def index
  	@links = Link.all
  end

  def show
  	@link = Link.find(params[:id])
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(link_params)
	  @link.save

	  redirect_to :action => :index
  end

 private
 def link_params
 	params.require(:link).permit(:title, :url)
 end
end