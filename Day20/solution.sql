SELECT
  video.video_id,
  video.name,
  genre_id
FROM
  video
  JOIN video_genre ON video.video_id = video_genre.video_id
WHERE
  no_of_views > 100000
  AND genre_id = 201
ORDER BY
  video.video_id ASC;
