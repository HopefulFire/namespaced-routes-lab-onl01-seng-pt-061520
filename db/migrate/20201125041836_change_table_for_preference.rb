class ChangeTableForPreference < ActiveRecord::Migration[5.0]
  def change
    change_table :preferences do |preferences|
      preferences.remove :allow_new_songs
      preferences.remove :allow_new_artists
      preferences.boolean :allow_create_artists
      preferences.boolean :allow_create_songs
    end
  end
end
