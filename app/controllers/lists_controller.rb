class ListsController < ApplicationController
  def new
    "Modelオブジェクトのインスタンスを生成"
    @list = List.new
  end

  def create
    list = List.new(list_params)
    # データベースに保存
    list.save
    # トップ画面へ移行
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
