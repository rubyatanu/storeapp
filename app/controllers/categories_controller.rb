class CategoriesController < ApplicationController
  
  def new
    @page_title = 'Add a new category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'category created!'
      redirect_to categories_path
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
  def category_params
   params.require(:category).permit(:name)
  end

end
