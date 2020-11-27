require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/books'

current_path = File.dirname(__FILE__)
film = Movie.from_file(current_path + '/data/movies/01.txt')
book = Books.from_file(current_path + '/data/books/002.txt')

puts film
puts book

begin
  Product.from_file(current_path + '/data/movies/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end