require_relative 'scheduler'

class Main
  def show_menu
    puts ''
    puts 'Welcome to School Library App!'
    puts ''
    puts 'Choose an option by entering a number:'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List rentals for a person'
    puts '7. Quit'
    gets.chomp.to_i
  end
end

s = Scheduler.new
s.schedule
