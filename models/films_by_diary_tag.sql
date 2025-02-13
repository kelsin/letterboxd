MODEL (
  name kelsin.films_by_diary_tag,
  kind FULL
);

SELECT tag as tag,
       count(*) as count
FROM (SELECT unnest(tags) as tag FROM kelsin.diary)
GROUP BY 1
ORDER BY count desc
