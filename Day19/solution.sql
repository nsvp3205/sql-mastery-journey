FROM
  video_genre
  JOIN video ON video_genre.video_id = video.video_id
WHERE
  (
    cast(strftime("%Y", published_datetime) AS int) BETWEEN 2010
    AND 2020
  )
  AND genre_id IN (201, 202, 204, 205, 206, 207)
GROUP BY
  genre_id
ORDER BY
  no_of_videos DESC,
  genre_id ASC;
