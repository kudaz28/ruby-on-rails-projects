module ApplicationHelper
  #return a title on a page basis
  
  def title
    base_title = "Ashtead Allotments Association"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
