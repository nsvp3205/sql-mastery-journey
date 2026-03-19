Fetch the user_id of users who liked videos and are also subscribed to the channels of those videos.

Conditions:
- user_likes → user liked a video
- video → get channel_id of that video
- channel_user → check if user subscribed to that channel
- Ensure same user and same channel
- Sort result in ascending order of user_id
