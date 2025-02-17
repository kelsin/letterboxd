MODEL (
  kind FULL
);

SELECT
  "Watched Date"::DATE as date,
  name as film,
  year as year,
  "Letterboxd URI" as uri,
  rating as rating,
  rewatch is not null as rewatch,
  STRING_TO_ARRAY(tags, ', ') as tags
FROM kelsin.original_diary;
