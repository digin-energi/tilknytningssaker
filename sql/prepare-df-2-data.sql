INSERT INTO prepare_df_2 (
  id,
  geom,
  fosweb_id,
  customer_need_fulfilled_estimate, 
  customer_need_on_terms_fulfilled_estimate,
  investment_contribution_estimate,
  df_reply,
  comment,
  case_id,
  case_owner_orgnumber,
  sender_orgnumber,
  plannett_ref
)
VALUES (
 1,
 ST_GeomFromText('POINT(58.78611 5.61667)', 4326),
 '1',
 '2026-12-20',
 '2024-12-20',
 12000000,
 TRUE,
 'Det tar vesentlig lengre tid dersom ikke sju andre kunder gjennomfører planene sine.',
 '234',
 '977285712',
 '962986633',
 '20220196'
);