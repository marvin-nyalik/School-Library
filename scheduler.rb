require_relative 'app'

class Scheduler
  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:disable Metrics/MethodLength
  def schedule
    app = App.new
    app.init_arrays
    main = Main.new
    loop do
      choice = main.show_menu
      case choice
      when 1
        app.books
      when 2
        app.people
      when 3
        app.add_person
      when 4
        app.add_book
      when 5
        app.add_rental
      when 6
        puts 'Enter person ID'
        id = gets.chomp.to_i
        app.all_personal_rentals(id)
      when 7
        puts 'GOODBYE'
        app.save
        break
      else
        puts 'INVALID OPTION'
      end
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
  # rubocop:enable Metrics/MethodLength
end
