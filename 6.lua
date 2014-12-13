-- Problem 6
-- The sum of the squares of the first ten natural numbers is,
-- 12 + 22 + ... + 102 = 385
-- The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)2 = 552 = 3025
-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

_ = require 'underscore'


function sumOfSquaresNaturais()
  local list = {}

  for i = 1, 100 do
    table.insert(list, i * i)
  end

  return _.reduce(list, function(memo, x) return memo + x end)
end

function squareOfSumNaturais()
  local list = {}

  for i = 1, 100 do
    table.insert(list, i)
  end

  local totalSum = _.reduce(list, function(memo, x) return memo + x end)

  return totalSum * totalSum
end

print( squareOfSumNaturais() - sumOfSquaresNaturais() )