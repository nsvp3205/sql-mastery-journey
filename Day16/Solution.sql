SELECT
  users.user_id
FROM
  users
WHERE
  NOT EXISTS (
    SELECT 1
    FROM user_likes
    WHERE user_likes.user_id = users.user_id
  )
ORDER BY
  users.user_id ASC;
