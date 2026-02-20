SELECT
  user_likes.user_id
FROM
  user_likes
  JOIN video
    ON user_likes.video_id = video.video_id
WHERE
  user_likes.reaction_type = 'LIKE'
  AND user_likes.user_id IN (
    SELECT
      channel_user.user_id
    FROM
      channel_user
    GROUP BY
      channel_user.user_id
    HAVING
      COUNT(channel_user.channel_id) = 1
  )
GROUP BY
  user_likes.user_id
HAVING
  COUNT(DISTINCT video.channel_id) >= 2
ORDER BY
  user_likes.user_id ASC;
