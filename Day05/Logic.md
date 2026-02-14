## Main Entity
- user_id

## Likes Condition
1. Filter likes from 2021
2. Group by user_id
3. At least 3 videos → COUNT(DISTINCT video_id) >= 3
4. At least 2 channels → COUNT(DISTINCT video.channel_id) >= 2

## Subscription Condition
- User must be subscribed to exactly 1 channel
- Group channel_user by user_id
- HAVING COUNT(DISTINCT channel_id) = 1
