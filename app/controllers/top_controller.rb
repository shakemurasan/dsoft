class TopController < ApplicationController
  def index
    @books = Book.where(current: true).order(order_at: :desc)
    @activities = Activity.limit(2).order(order_at: :desc)
  end
end
