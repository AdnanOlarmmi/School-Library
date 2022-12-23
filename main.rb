require_relative 'app'

def main
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
            list_books(books)
        when '2'
            if people.empty?
                puts 'There are no people yet'
                next 
            end
            list_people(people)
        when '3'
            people.push(create_person)
        when '4'
            books.push(create_book)
        when '5'
            rentals.push(create_rental(books, people))
        when '6'
            list_rentals_for_person_id(people)
        end
        puts
    end
    puts 'Thank you for using this app!'
end

main

