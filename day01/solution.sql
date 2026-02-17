SELECT
  user_likes.user_id
FROM
  user_likes
  JOIN video
    ON user_likes.video_id = video.video_id
WHERE
  video.channel_id = 200
  AND user_likes.user_id NOT IN (
    SELECT
      user_likes.user_id
    FROM
      user_likes
      JOIN video
        ON user_likes.video_id = video.video_id
    WHERE
      video.channel_id = 200
  )
GROUP BY
  user_likes.user_id;
