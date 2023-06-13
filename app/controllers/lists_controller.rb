class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    id = params[id]
    @list = List.find(params[:id])
  end

  def new #create
    @list = List.new
  end

  def create  #create
    @list = List.new(list_params)
    @list.save

    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end
private
def list_params
  params.require(:list).permit(:name)
end

end
