class ItemsController < ApplicationController
  before_filter :set_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @items = Item.all
    respond_with(@items)
  end

  def welcome
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(params[:item])
    @item.save
    respond_with(@item)
  end

  def update
    @item.update_attributes(params[:item])
    respond_with(@item)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end
end
