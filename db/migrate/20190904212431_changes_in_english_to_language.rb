class ChangesInEnglishToLanguage < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :in_english?, :string
    rename_column :movies, :in_english?, :language 
  end
end
