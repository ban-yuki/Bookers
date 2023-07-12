class BooksController < ApplicationController
  def top
    
  end 
  
  def new
  end 

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path(book.id)
    else
      render :new
    end
  end
    
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
    @books = Book.all
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)  
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
