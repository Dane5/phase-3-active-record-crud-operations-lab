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
    
      def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
      end
    
      def self.find_movies_after_2002
        Movie.where("release_date > 2002")
      end
    
      def update_with_attributes(attributes)
        self.update(attributes)
      end
    
      def self.update_all_titles(title)
        Movie.update(title: title)
      end
    
      def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
      end
    
      def self.delete_all_movies
        Movie.destroy_all
      end
    
  end



# Movie Create .create_with_title saves the title to the movie
# Movie Create .create_with_title creates a new record in the database
# Movie Read .first_movie returns the first item in the movies table
# Movie Read .last_movie returns the first item in the movies table
# Movie Read .movie_count returns the number of items in the movies table
# Movie Read .find_movie_with_id returns the movie with the corresponding id
# Movie Read .find_movie_with_attributes returns the movie with the corresponding attributes
# Movie Read .find_movies_after_2002 returns a list of movies released after 2002
# Movie Update #update_with_attributes updates one movie
# Movie Update .update_all_titles updates the title of all the movies
# Movie Delete .delete_by_id deletes the record with the corresponding id
# Movie Delete .delete_all_movies deletes all the movies from the movies table