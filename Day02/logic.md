## Main Entity
- user_id

## Positive Condition
- User liked videos
- Video belongs to channel_id = 352
- Like happened in year 2018
- Requires JOIN between user_likes and video

## Negative Condition
- User did NOT subscribe to channel_id = 352
- Requires exclusion using channel_user (NOT IN)

## Grouping
- GROUP BY user_id is needed to handle multiple likes
- Ensures at least one qualifying like exists
