MODEL (
  name kelsin.films_by_diary_year,
  kind FULL
);

SELECT
  date_part('year', date) as year,
  COUNT(*) as count
FROM kelsin.diary
GROUP BY 1
