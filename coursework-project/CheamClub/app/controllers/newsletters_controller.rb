class NewslettersController < InheritedResources::Base

  def index
    @newsletters = Newsletters.all
  end

  def new
    @newsletters = Newsletters.new
  end

  def create
     @newsletters = Newsletters.new(resume_params)

    if @newsletters.save
      redirect_to newsletters_path, notice: "The newsletter #{@newsletter.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @newsletters = Newsletters.find(params[:id])
    @newsletters.destroy
    redirect_to newsletters_path, notice:  "The newsletter #{@resume.name} has been deleted."
  end
  private

    def newsletter_params
      params.require(:newsletter).permit(:title, :date, :attachment)
    end
end

