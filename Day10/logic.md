## Main Entity
- user_id

## Likes Condition
- Table: user_likes
- reaction_type = 'LIKE'
- GROUP BY user_id
- HAVING COUNT(video_id) >= 2

## Subscription Condition
- Table: channel_user
- Negative condition
- Use NOT IN subquery
