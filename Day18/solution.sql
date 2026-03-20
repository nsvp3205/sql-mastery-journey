SELECT
  id,
  name,
  (collection_in_cr - budget_in_cr) AS profit,
  CASE
    WHEN (collection_in_cr - budget_in_cr) <= 100 
      THEN (collection_in_cr - budget_in_cr) * 0.1
    WHEN (collection_in_cr - budget_in_cr) > 100 AND (collection_in_cr - budget_in_cr) <= 500 
      THEN (collection_in_cr - budget_in_cr) * 0.15
    ELSE (collection_in_cr - budget_in_cr) * 0.18
  END AS tax_amount
FROM
  movie;
