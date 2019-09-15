class Movie < ApplicationRecord

  # validates :title, :year, :plot, :director, :language, presence: true
  # validates :plot, length: { in: 10..500 }

  # def in_english?
  #   if language == "english"
  #     true
  #   else
  #     false
  #   end
  # end

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  # def genre_names
  #   genres.map do { |genre| genre.name }
  # end

end
