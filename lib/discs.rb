class Discs < Product
  attr_accessor :album_name, :executor, :genre, :create_year

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      album_name: lines[0],
      executor: lines[1],
      genre: lines[2],
      create_year: lines[3],
      price: lines[4].to_i,
      quantity: lines[5].to_i
    )
  end

  def initialize(params)
    super

    @album_name = params[:album_name]
    @executor = params[:executor]
    @genre = params[:genre]
    @create_year = params[:create_year]
  end

  def to_s
    "Альбом «#{@album_name}» | Исполнитель: #{@executor} | Жанр: #{@genre} | Год создания: #{@create_year} | #{super}"
  end

  def update(params)
    super

    @album_name = params[:album_name] if params[:album_name]
    @executor = params[:executor] if params[:executor]
    @genre = params[:genre] if params[:genre]
    @create_year = params[:create_year] if params[:create_year]
  end
end
