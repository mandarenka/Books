class SearchController < ApplicationController
  def index
    q = params[:q]
    @q = params[:q]
    @books = Book.search(title_cont: q).result

  end

  def search
  end
end