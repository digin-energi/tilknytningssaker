DROP VIEW IF EXISTS prepare_df_1_actordetails;
DROP TABLE IF EXISTS prepare_df_1_actor;
DROP TABLE IF EXISTS prepare_df_1;
DROP TABLE IF EXISTS actor;
DROP TYPE IF EXISTS ACTOR_TYPE;
DROP TYPE IF EXISTS PRODUCTION_TYPE;
DROP TYPE IF EXISTS CUSTOMER_MATURITY;

CREATE TYPE ACTOR_TYPE 
AS ENUM (
  'Uttakskunde', 
  'Tilknyttende nettselskap', 
  'Tilknyttet nettselskap',
  'Transmisjonsnett',
  'Annet nettselskap'
);

CREATE TYPE PRODUCTION_TYPE 
AS ENUM (
  'Sol', 
  'Vind', 
  'Elv'
);

CREATE TYPE CUSTOMER_MATURITY 
AS ENUM (
  'Liten', 
  'Middels', 
  'Stor'
);

CREATE TABLE actor (
  id INTEGER PRIMARY KEY,
  orgnumber INTEGER UNIQUE NOT NULL,
  name TEXT
);

CREATE TABLE prepare_df_1 (    
  id INTEGER PRIMARY KEY,
  geom GEOMETRY,
  case_id TEXT,
  case_owner_orgnumber TEXT,
  fosweb_id TEXT,
  voltage_level NUMERIC(10, 2),  
  comment TEXT,
  customer_type TEXT,
  max_load NUMERIC(10, 2),
  min_load NUMERIC(10, 2),
  max_injection NUMERIC(10, 2),
  min_injection NUMERIC(10, 2),
  production_type PRODUCTION_TYPE,
  estimated_connection_date DATE,
  customer_flexibility TEXT,
  customer_maturity CUSTOMER_MATURITY,
  customer_need_comment TEXT,
  customer_growth_comment TEXT,
  assumed_relevant_maxpower_for_df_assessment NUMERIC(10, 2)
);

CREATE TABLE prepare_df_1_actor (
  prepare_df_1_id INTEGER REFERENCES prepare_df_1(id) ON DELETE CASCADE,
  actor_id INTEGER REFERENCES actor(id) ON DELETE CASCADE,
  role ACTOR_TYPE
);

CREATE OR REPLACE VIEW prepare_df_1_actordetails AS
    SELECT p.prepare_df_1_id, 
      p.role, 
      a.orgnumber, 
      a.name
    FROM prepare_df_1_actor p
    JOIN actor a ON p.actor_id = a.id;