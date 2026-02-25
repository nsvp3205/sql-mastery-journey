## Main Entity
- user_id

## Tables Used
- user_likes
- video

## Why JOIN Needed
- To get channel_id from video table

## Row Filters
- reaction_type = 'LIKE'
- Year = 2023

## Group Conditions
- COUNT(video_id) >= 2
- COUNT(DISTINCT video.channel_id) = 1
