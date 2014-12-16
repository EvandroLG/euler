-- Problem 7
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?

function isPrime(value)
  for i=2, value^(1/2) do
    if (value % i == 0) then
      return false
    end
  end

  return true
end

local list = {}
local number = 1

while( #list <= 10001 ) do
  if ( isPrime(number) ) then
    table.insert(list, number)
  end

  number = number + 1
end

print(list[10002])