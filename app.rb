require_relative 'book'
require_relative 'teacher'
require_relative 'student'
require_relative 'rental'
require_relative 'person'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books(books)
    books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_people(people)
    people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp
    if person_type != '1' && person_type != '2'
      puts 'Invalid option'
      return
    end
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    puts name
    person = person_type == '1' ? Student.new(age, name) : Teacher.new(age, name)
    puts "Person created successfully #{person}", person.name, person.age
    person
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    Book.new(title, author)
  end

  def create_rental(books, people)
    puts 'Select a book from the following list by number'
    books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_index = gets.chomp.to_i
    puts
    puts 'Select a person from the following list by number (not id)'
    people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i
    puts
    print 'Date: '
    date = gets.chomp
    @rentals.push(Rental.new(date, books[book_index], people[person_index]))
    puts 'Rental created successfully', @rentals.length
  end

  def list_rentals_for_id
    puts 'ID of person: '
    person_id = gets.chomp.to_i
    puts 'Rentals: '
    @rentals.each do |rental|
      if person_id == rental.book.id
        puts "Date: #{rental.date}, Book '#{rental.person.title}' by #{rental.person.author}"
      end
    end
  end
end