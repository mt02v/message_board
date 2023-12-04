class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(params_board)
    @board.save
    redirect_to "/boards"
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    #定義エラーが出ている
    @board.update_attributes(params_board)
    redirect_to "/boards/#{@board.id}"
  end
  
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to "/boards"
  end
  
  private

  def params_board
    params.permit(:title, :editor)
  end
end