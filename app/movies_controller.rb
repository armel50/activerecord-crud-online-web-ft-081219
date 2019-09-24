

def can_be_instantiated_and_then_saved
  movie = Movie.new
  movie.title = "This is a title."
   movie.save
end

def can_be_created_with_a_hash_of_attributes
  # Initialize movie and then and save it
  attributes = {
      title: "The Sting",
      release_date: 1973,
      director: "George Roy Hill",
      lead: "Paul Newman",
      in_theaters: false
  }
  movie = Movie.create(attributes) 
    
end

def can_be_created_in_a_block(args = {title: "Home Alone", release_date: 1990})
  Movie.create(args)
end

def can_get_the_first_item_in_the_database
 Movie.all.first
end

def can_get_the_last_item_in_the_database
  Movie.all.last
end

def can_get_size_of_the_database
  Movie.all.size
end

def can_find_the_first_item_from_the_database_using_id
  Movie.all.find(1)
end

def can_find_by_multiple_attributes
  # Search Values:
  # title == "Title"
  # release_date == 2000
  # director == "Me"'
  Movie.all.find(1000)
  
end

def can_find_using_where_clause_and_be_sorted
  result = []
 movie = Movie.all.map{|el| result << el if el.release_date > 2002}  
 result.sort.reverse


end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick", save it, then return it
  movie = Movie.create(title: "Awesome Flick") 
  movie = Movie.all.find_by(title:"Awesome Flick")
  movie.title="Even Awesomer Flick"
  movie.save
 

end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
 movie =  Movie.create(title: "Wat?") 
 movie.title = "Wat, huh?"
 movie.save
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end
 Movie.all.each do |el| 
   el.title = "A Movie" 
   el.save
 end
end

def can_destroy_a_single_item
  movie = Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  
  movie.destroy
end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end
 Movie.all.each do |el|
   el.destroy
 end
end