## Main Entity
- user_id

## Likes Side
- Tables: user_likes JOIN video
- reaction_type = 'LIKE'
- GROUP BY user_id
- HAVING COUNT(DISTINCT video.channel_id) >= 2

## Subscription Side
- Table: channel_user
- Independent grouping
- GROUP BY user_id
- HAVING COUNT(channel_id) = 1
- Use IN subquery
