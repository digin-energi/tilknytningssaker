DROP TABLE IF EXISTS prepare_df_2;

CREATE TABLE prepare_df_2 (    
  id INTEGER PRIMARY KEY,
  geom GEOMETRY,
  fosweb_id TEXT,
  customer_need_fulfilled_estimate DATE, 
  customer_need_on_terms_fulfilled_estimate DATE,
  investment_contribution_estimate NUMERIC(10, 2),
  df_reply BOOLEAN,
  comment TEXT,
  case_id TEXT,
  case_owner_orgnumber TEXT,
  sender_orgnumber TEXT,
  plannett_ref TEXT
);