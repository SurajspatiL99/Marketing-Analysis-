/*
viewing the dataset
*/
select * from top_us_youtubers;


-- 1. Removing unnecessary columns by only selecting required columns

select Name, 
	total_subscribers,
	total_views,
	total_videos
from top_us_youtubers;

--2. Extracting channel names usinf Parsename function

select 
	PARSENAME(REPLACE(Name, '@', '.'), 2) AS channel_name
from top_us_youtubers;


--3. Create view for powerbi
create view us_youtuber as

select top 100 
	PARSENAME(REPLACE(Name, '@', '.'), 2) AS channel_name, 
	total_subscribers,
	total_views,
	total_videos
from top_us_youtubers;

