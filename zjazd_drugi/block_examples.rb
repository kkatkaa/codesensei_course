# Napisz metodę, która uruchomi wprowadzony przez uzytkownika blok i poinformuje go, że jest orzed uruchomieniem i po uruchomieniu.

# def user_block
#   yield
# end
#
# puts "Before use"
#
# user_block do
#   puts "Your block"
# end
#
# puts "After use"


def block_with_params
  puts "Before"
  yield(123)
  yield(:test)
  puts "After"
end

block_with_params do |val|
  puts "I'm inside the block, get #{val}"
end
