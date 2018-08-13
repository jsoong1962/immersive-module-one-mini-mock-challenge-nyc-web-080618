require 'pry'
require_relative './book'
require_relative './author'


johnny = Author.new("Johnny")
david = Author.new("David")
lisa = Author.new("Lisa")

book1 = Book.new(johnny, "Jaws", 10000)
book2 = Book.new(david, "Attack", 20000)
book3 = Book.new(lisa, "Yield", 30000)
book4 = Book.new(johnny, "Fuck", 30000)
binding.pry
