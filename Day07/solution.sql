SELECT
  user_likes.user_id,
  COUNT(user_likes.video_id) AS total_likes
FROM
  user_likes
WHERE
  user_likes.reaction_type = 'LIKE'
GROUP BY
  user_likes.user_id
ORDER BY
  user_likes.user_id ASC;
