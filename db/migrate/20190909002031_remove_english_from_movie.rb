class RemoveEnglishFromMovie < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :english, :language 
  end
end
