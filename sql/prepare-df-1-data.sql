INSERT INTO actor(id, orgnumber, name)
VALUES (1, 111222333, 'Klepp bakeri');

INSERT INTO actor(id, orgnumber, name)
VALUES (2, 962986633, 'Statnett');

INSERT INTO actor(id, orgnumber, name)
VALUES (3, 980038408, 'Lnett');

INSERT INTO actor(id, orgnumber, name)
VALUES (4, 977285712, 'BKK');

INSERT INTO prepare_df_1 (
  id,
  geom,
  case_id,
  case_owner_orgnumber,
  fosweb_id,
  voltage_level,  
  comment,
  customer_type,
  max_load,
  min_load,
  max_injection,
  min_injection,
  production_type,
  estimated_connection_date,
  customer_flexibility,
  customer_maturity,
  customer_need_comment,
  customer_growth_comment,
  assumed_relevant_maxpower_for_df_assessment
)
VALUES (
 1,
 ST_GeomFromText('POINT(58.78611 5.61667)', 4326),
 '234',
 '567567567',
 '1',
 11000,
 'Skal bli Norges største og beste bakeri; regner opp mot 37 MW om 12 år, men starter forsiktig med 200 kW de første 5 år. Vil i gang snarest mulig.',
 'Bakeri med solceller på tak',
 37,
 0.2,
 5,
 0,
 'Sol',
 '2023-08-01',
 'Svært fleksibel unntatt hver natt fra 0100 til 0700',
 'Stor',
 'Kundens makslast vil komme i timer med lav belastning i nettet for øvrig',
 'Kunden planlegger boller og brus',
 14
);

INSERT INTO prepare_df_1_actor(prepare_df_1_id, actor_id, role)
VALUES (1, 1, 'Uttakskunde');

INSERT INTO prepare_df_1_actor(prepare_df_1_id, actor_id, role)
VALUES (1, 2, 'Transmisjonsnett');

INSERT INTO prepare_df_1_actor(prepare_df_1_id, actor_id, role)
VALUES (1, 3, 'Tilknyttet nettselskap');

INSERT INTO prepare_df_1_actor(prepare_df_1_id, actor_id, role)
VALUES (1, 4, 'Tilknyttende nettselskap');