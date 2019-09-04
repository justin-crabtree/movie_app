class ChangeLanguageToEnglish < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :language, :english 
  end
end
