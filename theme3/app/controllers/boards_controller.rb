class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def create
  end
end
