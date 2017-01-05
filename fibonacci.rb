def fibs(n)
  a, b = 0 , 1
  (n-1).times do
    a, b = b, a + b
  end
  a
end

def fibs_rec(n)
  n < 2 ? n : fibs(n-1) + fibs(n-2)
end


puts fibs(10)
puts fibs_rec(10)
