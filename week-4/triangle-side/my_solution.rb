# I worked on this challenge [by myself, with: Joshua Monzon].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c && a + c > b && c + b > a
  true
  else
  false
  end

end