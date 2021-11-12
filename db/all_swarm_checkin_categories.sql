-- DDL generated by Postico 1.5.19
-- Not all database features are supported. Do not use for backup.

-- Table Definition ----------------------------------------------

CREATE VIEW all_swarm_checkin_categories AS  SELECT raw_data.value AS category,
    count(*) AS count
   FROM raw_data
  WHERE raw_data.key = 'swarmCheckinCategory'::text
  GROUP BY raw_data.value
  ORDER BY (count(*)) DESC;