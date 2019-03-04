class NewslettersController < InheritedResources::Base
  before_action :authenticate_member!, :except => [:index, :show]
  
  
  def show
    
  end
  
  
  def download
    #send_file '	/uploads/newsletter/file/1/COM2025_Coursework.pdf	', :type=>"application/zip"  :x_sendfile=>true
  end
  
  private

    def newsletter_params
      params.require(:newsletter).permit(:title, :date, :file)
    end
end

