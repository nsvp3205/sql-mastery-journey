#main entity
-name
-rating_variance

#condition
-where category "WATCH"
-aggregation = AVG(rating)

#tables
-product

#subquery_condition
-get avg rating 
-minus it with actual rating to get rating variance
-this calculation avg rating should be done in subquery 
