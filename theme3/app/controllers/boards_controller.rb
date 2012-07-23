class BoardsController < ApplicationController
  def index
    p 2
    @boards = Board.all
  end

  def create
    board = Board.new(params[:board])
    board.save
    redirect_to boards_path
    p 1
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to boards_path
  end

  def search
    @boards = Board.where(:name => params[:name])
    render :index
  end
end
