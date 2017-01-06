def fibs(n)
  s = [0, 1]
  (n-2).times do
    s << s[-1] + s[-2]
  end
  s[0..n]
end

def fibs_rec(n, arr = [0, 1])
  return arr[0] if n == 0
  return arr if n == 2
  arr << arr[-1] + arr[-2]
  fibs_rec(n-1, arr)
end


puts fibs(10).inspect
puts fibs_rec(10).inspect
