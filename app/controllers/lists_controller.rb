class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path, notice: 'List was successfully deleted.'
  end

    def edit
      @list = List.find(params[:id])
    end

    def update
      @list = List.find(params[:id])
      if @list.update(list_params)
        redirect_to list_path(@list), notice: 'List was successfully updated.'
      else
        render :edit
      end
    end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
