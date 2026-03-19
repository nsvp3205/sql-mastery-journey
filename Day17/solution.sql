SELECT 
  DISTINCT user_likes.user_id
FROM
  user_likes
JOIN video
  ON user_likes.video_id = video.video_id
JOIN channel_user
  ON video.channel_id = channel_user.channel_id
  AND user_likes.user_id = channel_user.user_id
WHERE
  user_likes.reaction_type = 'LIKE'
ORDER BY
  user_likes.user_id ASC;
