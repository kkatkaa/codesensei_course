max = ""

file = File.open("/etc/hosts")
file.each do |line|
  next if line[0] == "#"
  if line.length  > max.length
    max = line
  end
end
puts max
file.close
