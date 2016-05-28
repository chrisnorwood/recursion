# iterative fibonacci sequence
# arguments: n , number of term to determine
def fib n
  result = []
  for i in (0..n)
    case i
      when 0 then result << 0
      when 1 then result << 1
      else result << (result[i-1] + result[i-2])
    end
  end
  result.last
end

# recursive fibonacci sequence
# arguments: n , number of term to determine
def fib_r n
  case n
  when 0
    0
  when 1
    1
  else
    fib_r(n-1) + fib_r(n-2)
  end
end