## Main Entity
- user_id

## What must be TRUE
1. User liked videos in 2022
2. Likes belong to exactly 1 distinct channel
   → GROUP BY user_id
   → HAVING COUNT(DISTINCT video.channel_id) = 1

## Subscription Condition
- User must have at least one subscription
  → Ensure user exists in channel_user
  → Use JOIN
