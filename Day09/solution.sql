SELECT
  user_likes.user_id,
  COUNT(user_likes.video_id) AS total_likes
FROM
  user_likes
  JOIN video
    ON user_likes.video_id = video.video_id
WHERE
  user_likes.reaction_type = 'LIKE'
GROUP BY
  user_likes.user_id
HAVING
  COUNT(DISTINCT video.channel_id) >= 2
ORDER BY
  user_likes.user_id ASC;
