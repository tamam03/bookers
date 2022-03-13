class ListsController < ApplicationController
   def new
    @book = Book.new
   end

   def create

    book = Book.new(book_params)
    book.save
    # トップへ遷移→showに
    redirect_to list_path(book.id)
   end

   def index
   end

   def show
      @book = Book.find(params[:id])
   end

   def edit
   end





  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
