require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/books'
require_relative 'lib/discs'
require_relative 'lib/product_collection'
require_relative 'lib/purchases'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')
puts collection.sort!(by: :title).to_a

