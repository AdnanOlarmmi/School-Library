require_relative 'book'
require_relative 'teacher'
require_relative 'student'
require_relative 'rental'
require_relative 'person'

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
    puts 'Person created successfully #{person}', person.name, person.age
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
    Rental.new(date, books[book_index], people[person_index])
    puts 'Rental created successfully'
end

def list_rentals_for_person_id(people)
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    people.each do |person|
        next unless person.id == id
        person.rentals.each do |rental|
            puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
        end
    end
end

def doanything
    puts 'Hello World'
end



