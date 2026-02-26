SELECT
  name,
  ROUND(
    (
      SELECT
        AVG(rating)
      FROM
        product
      WHERE
        category = "WATCH"
    ) - rating,
    2
  ) AS rating_variance
FROM
  product
WHERE
  category = "WATCH";
