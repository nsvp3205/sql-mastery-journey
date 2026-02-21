## Main Entity
- user_id

## Likes Side
- Table: user_likes
- reaction_type = 'LIKE'
- Year = 2022
- GROUP BY user_id
- HAVING COUNT(video_id) >= 3

## Subscription Side
- Table: channel_user
- Independent grouping
- GROUP BY user_id
- HAVING COUNT(channel_id) >= 2
- Use IN subquery to avoid row multiplication
