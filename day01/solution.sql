SELECT
  ul.user_id
FROM
  user_likes ul
  JOIN video v
    ON ul.video_id = v.video_id
WHERE
  v.channel_id = 200
  AND ul.user_id NOT IN (
    SELECT
      ul2.user_id
    FROM
      user_likes ul2
      JOIN video v2
        ON ul2.video_id = v2.video_id
    WHERE
      v2.channel_id = 200
  )
GROUP BY
  ul.user_id;
