SELECT
  user_likes.user_id
FROM
  user_likes
WHERE
  user_likes.reaction_type = 'LIKE'
  AND CAST(strftime('%Y', user_likes.reacted_at) AS INTEGER) = 2022
  AND user_likes.user_id IN (
    SELECT
      channel_user.user_id
    FROM
      channel_user
    GROUP BY
      channel_user.user_id
    HAVING
      COUNT(channel_user.channel_id) >= 2
  )
GROUP BY
  user_likes.user_id
HAVING
  COUNT(user_likes.video_id) >= 3
ORDER BY
  user_likes.user_id ASC;
