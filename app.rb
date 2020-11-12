require_relative 'menu.rb'

  default_menu_hash = {
    message: "Please select an option",
    options: ['option 1', 'option 2', 'exit'],
}

  # menu2 = {
  #   message: "Please Select an option",
  #   options: ['add contact', 'update contact', 'list conctacts', 'exit']
  # }

  menu3 = {
    message: "Welcome to the casino. Select a game",
    options: ['Crabs', 'Poker', 'High/low', 'Exit'],
  }

menu_test = Menu.new(default_menu_hash)

casino_menu = Menu.new(menu3)
casino_menu.print

menu_test.print
puts menu_test.class



      ## we do usually have in a menu? Let's break it into smaller chucks
  # our menu's usually have a message -- like Please select an option/ please choose
  # list of option
  # user selecting one of those

  # Please select an option
  #   1) option 1
  #   2) option 2
  #   3) exit

  # what kind of data structure does that look like, with a message and options?
