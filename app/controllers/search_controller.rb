class SearchController < ApplicationController
  def search
    @model = params[:model]
    search = params[:search]
    word =params[:word]
    
    if @model == 'user'
      @user = User.search(search,word)
    else
      @book = Book.search(search,word)
    end
  end
end
