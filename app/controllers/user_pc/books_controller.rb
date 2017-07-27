class UserPc::BooksController < ApplicationController
  # GET /books
  # GET /books.json
  def index
    @books = Book.all.order(order_at: :desc)
  end
end
