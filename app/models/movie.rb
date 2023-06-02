class Movie < ActiveRecord::Base
   
    def self.create_with_title(title)
        movie = Movie.new(title: title)
        movie.save
        movie
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attr)
        self.find_by(attr)
    end

    def self.find_movies_after_2002
        self.where('release_date > 2002')
    end

    def update_with_attributes(attr)
        self.update(attr)
    end

    def self.update_all_titles(title)
        self.update(title: title)
    end

    def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end    
end