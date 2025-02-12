MODEL (
  kind FULL
);

SELECT
  "watched date"::DATE as date,
  name as film,
  year as year,
  "letterboxd uri" as uri,
  rating as rating,
  rewatch is not null as rewatch,
  string_split(tags, ', ')::VARCHAR[] as tags
FROM letterboxd.diary;
