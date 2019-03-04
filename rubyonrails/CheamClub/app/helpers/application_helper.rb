module ApplicationHelper
    #return a title on a page basis
    
    def title
        base_title = "Cheam Croquet & Bowls Club"
        if @title.nil?
            base_title
            else
            "#{base_title} | #{@title}"
        end
    end

end
