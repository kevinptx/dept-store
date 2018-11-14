class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, except: [:index, :new, :create]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_department
    @department = Department.find(params[:department_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end
end
