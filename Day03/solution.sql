elect user_likes.user_id
from user_likes join video on user_likes.video_id = video.video_id
where user_likes.reaction_type = 'LIKE'
and cast(strftime("%Y", user_likes.reacted_at) as int) = 2021
and user_likes.user_id  not in (
    select
    channel_user.user_id
    from channel_user
)
group by user_likes.user_id
having count(distinct video.channel_id) >= 2
order by user_likes.user_id asc;
