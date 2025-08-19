resource "spotify_playlist" "Tollywood" {
    name=" MY Tollywood playlist"
    tracks=["1bxzr3JK05fMTcweGAZUHp","1C2gJaINSao4GEXySYopiS"]
}

data "spotify_search_track" "AnirudhRavichander" {
    artist = "Anirudh Ravichander"

}

resource "spotify_playlist" "Library" {
   name = "Library❤️"
   tracks = [data.spotify_search_track.AnirudhRavichander.tracks[2].id,
    data.spotify_search_track.AnirudhRavichander.tracks[4].id,
    data.spotify_search_track.AnirudhRavichander.tracks[6].id]
}
