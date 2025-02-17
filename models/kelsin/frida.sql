MODEL (
  kind FULL
);

SELECT
  date,
  film,
  year,
  uri,
  rating,
  rewatch,
  tags,
FROM kelsin.diary
WHERE 'frida' = ANY(tags);
