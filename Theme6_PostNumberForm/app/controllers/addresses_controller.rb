class AddressesController < ApplicationController

  def create
    @number = params[:number]
    @number = Moji.zen_to_han(@number)
    @number = @number.gsub('-', '')
    render :show
  end

end
