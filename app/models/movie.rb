class Movie < ApplicationRecord

  def in_english?
    if language == "english"
      true
    else
      false
    end
  end

end
