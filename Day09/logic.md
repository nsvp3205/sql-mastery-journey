## Main Entity
- user_id

## Tables Used
- user_likes
- video

## Why JOIN Needed
- To get channel_id from video table

## Row Condition
- reaction_type = 'LIKE'

## Group Conditions
- COUNT(video_id) AS total_likes
- COUNT(DISTINCT video.channel_id) >= 2
