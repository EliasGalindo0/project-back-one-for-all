SELECT
  (SELECT COUNT(DISTINCT title) FROM SpotifyClone.music) AS `cancoes`, 
  (SELECT COUNT(DISTINCT artist_name) FROM SpotifyClone.artist) AS `artistas`, 
  (SELECT COUNT(DISTINCT album_name) FROM SpotifyClone.album) AS `albuns`;
  