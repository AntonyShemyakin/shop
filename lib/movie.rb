class Movie < Product
  attr_accessor :film_name, :create_year, :director

  def initialize(param)
    super
    @film_name = param[:film_name]
    @create_year = param[:create_year]
    @director = param[:director]
  end
  def to_s
    "Фильм «#{@film_name}» | Год создания: #{@create_year} | Режиссёр: #{@director} | #{super }"
  end

  def update(param)
    @film_name = param[:film_name] if param[:film_name]
    @create_year = param[:create_year] if param[:create_year]
    @director = param[:director] if param[:director]
  end
end