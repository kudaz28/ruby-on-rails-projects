class EventsController < InheritedResources::Base

  def creat
    @events = Events.new(events_params)
    # ...
  end
  
  private

    def events_params
      params.require(:events).permit(:title, :description, :date)
    end 
end

