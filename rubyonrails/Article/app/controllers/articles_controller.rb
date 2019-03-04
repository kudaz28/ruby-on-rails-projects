class ArticlesController < ApplicationController
  
  # Show list of articles and is the main page
  
  def index
    # Pass all the articles to the variable
    @articles = Article.all
  end
  
  # Display information for particular items e.g. comments to an event
  def show
    @article = Article.find(params[:id])
  end
  
  # Creating forms and passes the info to create
  def new
    @article = Article.new
  end
  
  # Security method to prevent system invalid data etc
  # Only allow the title and the body to be added
  def articles_params
    params.require(:article).permit(:title, :body)
  end
  
  # Not required in views as it works in congruent with index
  # When a new article or event is created, it is passed to the create method which creates the articles
  def create
    @article = Article.new(articles_params)

    if @article.save 
      redirect_to articles_path, :notice => "Your new article was created successfully"
    else
      render "new"
    end
  end
  
  # Allows to edit the form
  # Posts back to the update method
  def edit
    @article = Article.find(params[:id])
  end
  
  # Update info in database
  # Not required in views as it works in congruent with index
  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(articles_params)
      redirect_to articles_path, :notice => "Your article was updated successfully"
    else
      render "edit"
    end
  end
  
  # Receives an id to an object and Deletes info in database. Performs an SQL DELETE operation
  # HTTP Delete
  # Not required in views as it works in congruent with index
  def destroy
    @article = Article.find(params[:id])
    @article.destroy #deletes an article

    redirect_to articles_path, :notice => "Your article was deleted successfully"
  end
end
