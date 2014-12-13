-- Problem 5
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

local done = false
local number = 20346360

while (not done) do
  number = number + 1

  for i = 1, 20 do
    if (number % i > 0) then
      break
    end

    if (i == 20) then
      done = true
    end
  end
end

print(number)