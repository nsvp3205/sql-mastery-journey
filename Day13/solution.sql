SELECT
  user_likes.user_id
FROM
  user_likes
  JOIN video
    ON user_likes.video_id = video.video_id
WHERE
  user_likes.reaction_type = 'LIKE'
  AND CAST(strftime('%Y', user_likes.reacted_at) AS INTEGER) = 2023
GROUP BY
  user_likes.user_id
HAVING
  COUNT(user_likes.video_id) >= 2
  AND COUNT(DISTINCT video.channel_id) = 1
ORDER BY
  user_likes.user_id ASC;
