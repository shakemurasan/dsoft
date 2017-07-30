class UserPc::BooksController < ApplicationController
  # GET /books
  # GET /books.json
  def index
    category_id = params[:category_id]
    if category_id.present?
      @books = Book.where(id: BookCategory.where(category_id: category_id).select(:book_id)).order(order_at: :desc)
    else
      @books = Book.all.order(order_at: :desc)
    end
  end
end
