-- Problem 4
-- A palindromic number reads the same both ways. The largest palindrome made 
-- from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

_ = require 'underscore'


function isPalindrome(number)
  local value = tostring(number)
  local valueL, valueR = string.match(value, '([0-9][0-9][0-9])([0-9][0-9][0-9])')

  return string.reverse(valueL or '') == valueR
end

local numbers = _.range(100, 999)
local palindromes = {}

_.each(numbers, function(x)
  _.each(numbers, function(n)
    local value = x * n
    
    if(isPalindrome(value)) then 
      table.insert(palindromes, value)
    end
  end)
end)

print(_.max(palindromes))