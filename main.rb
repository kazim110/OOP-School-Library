require_relative 'app'

def display_menu
  puts "\nPlease choose an option by entering a number:"
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def execute_choice(app, choice)
  actions = {
    '1' => -> { app.list_books },
    '2' => -> { app.list_people },
    '3' => -> { app.create_person },
    '4' => -> { app.create_book },
    '5' => -> { app.create_rental },
    '6' => -> { app.list_rentals },
    '7' => lambda {
      puts 'Thank you for using this app!'
      exit
    }
  }

  action = actions[choice]
  if action
    action.call
  else
    puts 'Invalid option. Please try again.'
  end
end

def main
  puts 'Welcome to School Library App!'
  app = App.new

  loop do
    display_menu
    choice = gets.chomp
    execute_choice(app, choice)
  end
end

main
