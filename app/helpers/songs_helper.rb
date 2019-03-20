module SongsHelper
#     def artist_select(song, artist)
#         if song.artist.nil?
#             select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name), blank: true
#         elsif !artist.nil?
#             label_tag artist.name
#             text_field_tag artist.name
#         else
#             hidden_field_tag "song[artist_id]", song.artist.id
#         end
#     end
end
