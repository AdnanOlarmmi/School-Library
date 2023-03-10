require_relative 'app'

def others(option); end

def main
  app = App.new
  books = []
  people = []
  rentals = []
  puts 'Welcome to School Library App!'
  puts
  option = nil
  while option != '7'
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    option = gets.chomp
    case option
    when '1'
      if books.empty?
        puts 'There are no books yet'
        next
      end
      app.list_books(books)
    when '2'
      if people.empty?
        puts 'There are no people yet'
        next
      end
      app.list_people(people)
    when '3'
      people.push(app.create_person)
    when '4'
      books.push(app.create_book)
    when '5'
      rentals.push(app.create_rental(books, people))
    when '6'
      app.list_rentals_for_id
    end
    puts
  end
  puts 'Thank you for using this app!'
end

main
