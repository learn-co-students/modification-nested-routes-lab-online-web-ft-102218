module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, artist)
      if artist.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name), include_blank: true
      else !artist.nil?
          label_tag artist.name
          text_field_tag artist.name, artist.name
      end
  end
end
