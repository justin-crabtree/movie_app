class Movie < ApplicationRecord

  validates :title, :year, :plot, :director, presence: true
  validates :plot, length: { in: 10..500 }

  def in_english?
    if language == "english"
      true
    else
      false
    end
  end

end
