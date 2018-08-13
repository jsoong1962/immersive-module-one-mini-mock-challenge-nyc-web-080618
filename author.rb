class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def books
  Book.all.select do |book|
    book.author == self
  end
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    total = 0
    books.each do |book|
      total += book.word_count
    end
    total
end


def self.most_words
  array = Book.all.sort do |book1, book2|
  book2.word_count <=> book1.word_count
  end
  array[0].author
  end

end
