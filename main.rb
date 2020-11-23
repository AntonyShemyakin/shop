require_relative 'lib/product'
require_relative 'lib/movie'

film = Movie.new(price:290,quantity: 5)
puts "Фильм Леон стОит: #{film.price} руб."