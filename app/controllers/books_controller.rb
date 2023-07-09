class BooksController < ApplicationController
  def top
    
  end 
  
  def new
  end 

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end
    
  def index
    @book = Book.new
    @book = Book.find(params[:id])  
  end

  def show
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
