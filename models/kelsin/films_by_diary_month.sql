MODEL (
  kind FULL
);

SELECT
  date_part('year', date) as year,
  date_part('month', date) as month,
  COUNT(*) as count
FROM kelsin.diary
GROUP BY 1, 2
