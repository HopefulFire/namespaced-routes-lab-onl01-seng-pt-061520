namespace :preferences do
  desc 'Load app preferences'
  task load: :environment do
    Preference.create(allow_create_artists: true, allow_create_songs: true) if Preference.count == 0
  end
end
