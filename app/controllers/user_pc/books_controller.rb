class UserPc::BooksController < ApplicationController
  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end
end
