class Books < Product
  attr_accessor :book_name, :genre, :author

  def initialize(param)
    @book_name = param[:book_name]
    @genre = param[:genre]
    @author = param[:author]
  end
  def to_s
    "Название книги: #{@book_name} | Жанр: #{@genre} | Автор: #{@author} | #{super}"
  end

  def update(param)
    @book_name = param[:book_name] if param[:book_name]
    @genre = param[:genre] if param[:genre]
    @author = param[:author] if param[:author]
  end
end