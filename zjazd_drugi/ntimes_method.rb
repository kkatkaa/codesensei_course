#Stworz metode ntimes, ktora ma za zadaie dla argumentu n, n razy wokonać wprowadzony do niej blok.

#ntimes(2) {puts "Hi"}

def ntimes(n)
  n.times do
    yield
  end
end

ntimes(2) do
  puts "Hi"
end
