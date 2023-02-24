# class Show < ActiveRecord::Base
# end


class Show < ActiveRecord::Base

    def self.highest_rating
      maximum(:rating)
    end
  
    def self.most_popular_show
      order(rating: :desc).first
    end
  
    def self.lowest_rating
      minimum(:rating)
    end
  
    def self.least_popular_show
      order(rating: :asc).first
    end
  
    def self.ratings_sum
      sum(:rating)
    end
  
    def self.popular_shows
      where("rating > 5")
    end
  
    def self.shows_by_alphabetical_order
      order(name: :asc)
    end
  
  end
  

#   # Call .highest_rating method
# Show.highest_rating

# # Call .most_popular_show method
# Show.most_popular_show

# # Call .lowest_rating method
# Show.lowest_rating

# # Call .least_popular_show method
# Show.least_popular_show

# # Call .ratings_sum method
# Show.ratings_sum

# # Call .popular_shows method
# Show.popular_shows

# # Call .shows_by_alphabetical_order method
# Show.shows_by_alphabetical_order
