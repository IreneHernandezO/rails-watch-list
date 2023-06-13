class BookmarksController < ApplicationController
  def new #create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create  #create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    @bookmark.list = @list

    if bookmark.save
      redirect_to @list
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
