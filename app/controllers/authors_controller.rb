class AuthorsController < ApplicationController
  
  def new
    @page_title = 'Add a new book'
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = 'author created!'
      redirect_to authors_path
    else
      render 'new'
    end    
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end

  private
  def author_params
   params.require(:author).permit(:first_name, :last_name)
  end

end
