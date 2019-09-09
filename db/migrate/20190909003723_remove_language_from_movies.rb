class RemoveLanguageFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :language, :string
  end
end
