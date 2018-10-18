# Napisz program, który wyświetli tabliczkę mnożenia 10x10.

5.times do
  print " "
end

11.times do |i|
  if i > 0
    print "%-4d" % i
  end
end
puts " "

5.times do
  print " "
end

10.times do
  print "___ "
end
puts " "

i = 1
n = 0

while n < 10
  n += 1
  print "%-4d" % n, "|"
  11.times do |i|
    if i > 0
      print "%-4d" % (n*i)
    end
  end
  puts " "
end
