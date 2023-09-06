require_relative 'book'
require_relative 'person'
require_relative 'teacher'
require_relative 'rental'
require_relative 'student'
require 'json'

class App
  attr_accessor :all_books, :all_people, :all_rentals

  def initialize
    @all_books = []
    @all_people = []
    @all_rentals = []
  end

  def init_arrays
    if File.exist?('people.json')
      people_json_data = File.read('people.json')
      @all_people = JSON.parse(people_json_data) unless people_json_data.empty?
    end

    if File.exist?('books.json')
      books_json_data = File.read('books.json')
      @all_books = JSON.parse(books_json_data) unless books_json_data.empty?
    end

    return unless File.exist?('rentals.json')

    rentals_json_data = File.read('rentals.json')
    @all_rentals = JSON.parse(rentals_json_data) unless rentals_json_data.empty?
  end

  def books
    puts 'No books available' if @all_books.empty?
    @all_books.each_with_index do |book, index|
      puts "#{index}) #{book}"
    end
  end

  def people
    puts 'No teacher(s) or student(s)' if @all_people.empty?
    @all_people.each_with_index do |person, index|
      puts "#{index}) #{person}"
    end
  end

  def add_teacher
    puts 'Enter Age'
    age = gets.chomp
    puts 'Enter name'
    name = gets.chomp
    puts 'Enter specialization'
    specialization = gets.chomp
    new_teacher = Teacher.new(age, name)
    new_teacher.specialization = specialization
    @all_people << new_teacher
    puts 'Added Teacher'
  end

  def add_student
    puts 'Enter Age'
    age = gets.chomp
    puts 'Enter name'
    name = gets.chomp
    puts 'Has parent permission[Y/N]'
    perm = gets.chomp.upcase
    permission = (perm == 'Y')
    new_student = Student.new(age, name)
    new_student.parent_permission = permission
    @all_people << new_student
    puts 'Added student'
  end

  def add_person
    puts 'Do you want to create a Student(1) or a Teacher(2). [Input the number]'
    number = gets.chomp.to_i

    case number
    when 1
      add_student
    when 2
      add_teacher
    else
      puts 'Input Error: Invalid choice...'
    end
  end

  def add_book
    puts 'Enter book title..'
    title = gets.chomp
    puts 'Enter author name..'
    author = gets.chomp
    new_book = Book.new(title, author)
    @all_books << new_book
    puts 'Book Created Successfully'
  end

  def add_rental
    puts 'Select a person from the list by number (not ID)'
    people
    person_index = gets.chomp.to_i
    puts 'Select a book from the list by number (not ID)'
    books
    book_index = gets.chomp.to_i
    puts 'Enter date'
    date = gets.chomp
    new_rental = Rental.new(date, @all_books[book_index], @all_people[person_index])
    @all_rentals << new_rental
    puts 'Rental Added Successfully'
  end

  def all_personal_rentals(id)
    puts '** No rentals available **' if @all_rentals.empty?
    person_rental = @all_rentals.select do |rental|
      rental.person.id == id
    end
    puts person_rental
  end

  def save
    rentals_data = @all_rentals.to_json
    people_data = @all_people.to_json
    books_data = @all_books.to_json

    File.write('rentals.json', rentals_data)

    File.write('books.json', books_data)

    File.write('people.json', people_data)
  end
end
