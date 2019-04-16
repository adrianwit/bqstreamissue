CREATE OR REPLACE TABLE event_types(
  id   INT64 NOT NULL,
  name STRING
);


CREATE OR REPLACE TABLE events_${eventSufix} (
  id         INT64 NOT NULL,
  typeId     INT64 NOT NULL,
  quantity   FLOAT64,
  timestamp  TIMESTAMP,
  query      STRING
);


