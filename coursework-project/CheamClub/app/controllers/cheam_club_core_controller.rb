class CheamClubCoreController < ApplicationController
  def index
      @title = "Home"
  end

  def about_the_club
      @title = "About"
  end

  def how_to_join
      @title = "How to Join"
  end

  def what_you_need
      @title = "What you need"
  end

  def newsletters
      @title = "Newsletters"
  end

  def club_matters
      @title = "Club Matters"
  end

  def how_to_get_here
    @title = "How to get here"
  end

  def book_a_lawn
      @title = "Book a Lawn"
  end
  
  def links_to_croquet_sites
      @title = "Links to Croquet Sites"
  end
end
