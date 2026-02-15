SELECT
  user_likes.user_id
FROM
  user_likes
WHERE
  user_likes.reaction_type = 'LIKE'
  AND CAST(strftime('%Y', user_likes.reacted_at) AS INTEGER) = 2022
GROUP BY
  user_likes.user_id
HAVING
  COUNT(user_likes.video_id) >= 2
ORDER BY
  user_likes.user_id ASC;
