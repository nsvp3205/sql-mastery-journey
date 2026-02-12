## Main Entity
- user_id

## What must be TRUE
1. User liked videos
2. Likes happened in 2021
3. Likes belong to at least 2 different channels
   → Requires GROUP BY user_id
   → HAVING COUNT(DISTINCT video.channel_id) >= 2

## What must be FALSE
- User must not be subscribed to any channel
  → Exclude user_ids from channel_user
