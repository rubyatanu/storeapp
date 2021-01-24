class PublishersController < ApplicationController
  
  def new
    @page_title = 'Add a new publisher'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = 'publisher created!'
      redirect_to publishers_path
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
  def publisher_params
   params.require(:publisher).permit(:name)
  end
end
