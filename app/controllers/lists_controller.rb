class ListsController < ApplicationController
  def new
    "Viewへ渡すためのインスタンス変数に空のModelオブジェクトを代入"
    @list = List.new
  end

  def index
  end

  def show
  end

  def edit
  end
end
