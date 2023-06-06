class SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @range = params[:range]
    
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
      @title ="Users search for '#{params[:word]}'"
    else
      @books = Book.looks(params[:search], params[:word])
      @title ="Books search for '#{params[:word]}'"
    end
  end
end
