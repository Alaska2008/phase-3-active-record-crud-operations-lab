class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title: title)
    end
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end
    def self.find_movies_after_2002
        Movie.where("release_date>2002")
    end
    def update_with_attributes(attribute1,attribute2)
        movie = Movie.find_by(attribute1)
        movie.update(title: attribute2)
    end

    


end