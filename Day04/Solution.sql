SELECT
  user_likes.user_id
FROM
  user_likes
  JOIN video
    ON user_likes.video_id = video.video_id
  JOIN channel_user
    ON channel_user.user_id = user_likes.user_id
WHERE
  user_likes.reaction_type = 'LIKE'
  AND CAST(strftime('%Y', user_likes.reacted_at) AS INTEGER) = 2022
GROUP BY
  user_likes.user_id
HAVING
  COUNT(DISTINCT video.channel_id) = 1
ORDER BY
  user_likes.user_id ASC;
