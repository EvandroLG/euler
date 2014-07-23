-- Problem 1
-- If we list all the natural numbers below 10
-- that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
-- The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

_ = require 'underscore'

numbers = _.range(1, 1000)
multiples = _.select(numbers, function(x) return x % 3 == 0 or x % 5 == 0 end)
result = _.reduce(multiples, function(memo, x) return memo + x end)

print(result)