require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/books'

movie = Movie.new(film_name: 'Леон', director: 'Люк Бессон', price: 990)

movie.create_year = 1994
movie.update(quantity: 5)

book = Books.new(book_name: "Самоучитель Ruby", autor: "Симдянов Игорь", price: 1120)

book.genre = "Ужасы"
book.update(quantity: 10)
puts movie
puts book