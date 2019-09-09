class AddEnglishToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :english, :boolean, default: true
  end
end
