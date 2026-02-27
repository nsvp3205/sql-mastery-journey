Main Entity:
- user_id

Table Used:
- user_likes

Row Filters:
- reaction_type = 'LIKE'
- Year = 2023

Grouping:
- GROUP BY user_id

Condition:
- COUNT(video_id) >= 1
