class Book
  def initialize
    @number_of_pages = 700
    puts "Number of pages: #{@number_of_pages}"
  end
  def number_of_pages
    @number_of_pages
  end
  def number_of_pages=(value)
    @number_of_pages = value
  end
  def initialize
    @title = "Harry Potter"
    puts "Title is #{@title}."
  end
  def title
    @title
  end
end

harry_potter = Book.new
