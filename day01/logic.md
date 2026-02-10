## Main Entity
- user_id (each row represents one user)

## Positive Condition
- User has liked videos
- Video belongs to channel_id = 200
- Requires JOIN between user_likes and video

## Negative Condition
- User has NOT liked any video of channel_id = 200
- Requires SUBQUERY on user_likes joined with video

## Grouping
- GROUP BY user_id is needed to avoid duplicate users
- Ensures the "at least one" condition
