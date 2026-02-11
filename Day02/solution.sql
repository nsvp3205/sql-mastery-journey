SELECT
  user_likes.user_id
FROM
  user_likes
  JOIN video
    ON user_likes.video_id = video.video_id
WHERE
  video.channel_id = 352
  AND user_likes.reaction_type = 'LIKE'
  AND CAST(strftime('%Y', user_likes.reacted_at) AS INT) = 2018
  AND user_likes.user_id NOT IN (
    SELECT
      channel_user.user_id
    FROM
      channel_user
    WHERE
      channel_user.channel_id = 352
  )
GROUP BY
  user_likes.user_id
ORDER BY
  user_likes.user_id ASC;
