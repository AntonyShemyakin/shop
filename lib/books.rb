class Books < Product
  attr_reader :book_name, :genre, :author

  def initialize(param)
    @book_name = param[:book_name]
    @genre = param[:genre]
    @author = param[:author]
  end
  def to_s
    "Название книги: #{@book_name} Жанр: #{@genre} Автор: #{@author} #{super}"
  end
end