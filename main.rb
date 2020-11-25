require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/books'

products = []

products << Movie.new(
  film_name: 'Леон',
  create_year: '1994',
  director: 'Люк Бессон',
  price: 990,
  quantity: 5
)

products << Movie.new(
  film_name: 'Дурак',
  create_year: '2014',
  director: 'Юрий Быков',
  price: 390,
  quantity: 1
)

products << Books.new(
  title: 'Идиот',
  genre: 'роман',
  author: 'Федор Достоевский',
  price: 1500,
  quantity: 10
)
puts 'Вот какие товары у нас есть:'
puts
products.each { |product| puts product }