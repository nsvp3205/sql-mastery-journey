SELECT
  user_likes.user_id
FROM
  user_likes
WHERE
  user_likes.reaction_type = 'LIKE'
  AND user_likes.user_id NOT IN (
    SELECT
      channel_user.user_id
    FROM
      channel_user
  )
GROUP BY
  user_likes.user_id
HAVING
  COUNT(user_likes.video_id) >= 2
ORDER BY
  user_likes.user_id ASC;
