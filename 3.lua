-- Problem 3
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

function primeFactor(value)
  local factor = 2
  local largestFactor = factor

  while factor <= value do
    if value % factor == 0 then
      value = value / factor
      largestFactor = factor
      factor = 1
    end

    factor = factor + 1
  end

  return largestFactor
end

print(primeFactor(600851475143))