class Movie < Product
  attr_reader :film_name, :create_year, :director

  def initialize(param)
    super
    @film_name = param[:film_name]
    @create_year = param[:create_year]
    @director = param[:director]
  end
  def to_s
    "Фильм «#{@film_name}» Год создания: #{@create_year} Режиссёр: #{@director} #{super }"
  end
end