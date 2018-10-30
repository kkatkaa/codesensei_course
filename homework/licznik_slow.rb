# Napisz program, który policzy ilość wystąpień poszczególnych słów w zadanym jako
# argument stringu.
# Zignoruj wielkość liter.

  def word_count(words)
    word_list = Hash.new(0)
    words.downcase.scan(/\w+/) do |word|
      word_list[word] += 1
    end
    word_list
  end

puts word_count('foo Foo bar bar Bar')#=> { "foo" => 2, "bar" => 3 }
# puts word_count('Losowy ciąg znaków ciąg') #=> { "losowy" => 1, "ciąg" => 2, "znaków" => 1}
