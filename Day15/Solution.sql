SELECT
  user_likes.user_id,
  COUNT(user_likes.video_id) AS total_likes_2023
FROM
  user_likes
WHERE
  user_likes.reaction_type = 'LIKE'
  AND CAST(strftime('%Y', user_likes.reacted_at) AS INTEGER) = 2023
GROUP BY
  user_likes.user_id
HAVING
  COUNT(user_likes.video_id) >= 1
ORDER BY
  user_likes.user_id ASC;
