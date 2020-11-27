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

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      film_name: lines[0],
      director: lines[1],
      create_year: lines[2].to_i,
      price: lines[3].to_i,
      quantity: lines[4].to_i
    )
  end
end