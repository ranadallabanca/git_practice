require "colorize"
class Menu
  def initialize(menu)
    @menu = menu
    @color_scheme = { color: :light_cyan, background: :default }
  end

  # def print method
  def print

    # display menu message
    # replaces chars and spaces with *
    border = @menu[:message].gsub(/\s|\S/, '*')
    puts border.colorize(@color_scheme)
    puts @menu[:message].colorize(@color_scheme)
    puts border.colorize(@color_scheme)
      
    @menu[:options].each_with_index do |item, index|
      puts "#{index + 1}) #{item}"
    end
      # loop over menu options, need to add logic to add 1) as well
  end

  # get user input, return the number in the list, do error checking handling
  def get_selection
    # get input from user (convert to int)
    # to_i will change a string of letter into 0, so for this specific function
      # it would be better to use Integer()
    puts 'Select a value'
    input = gets.strip
      # if input is not a valid argument it'll go to rescue
    selection = Integer(input)

    # check if input in int, maybe check if it's a valid int 
      # ie if we have 4 options in out menu, the value should be 1,2,3,4.
      # so although 20 is in fact an integer, it would not be valid.
    if(selection >= 1 && selection <= @menu[:options].size)
      return selection
    else
      puts "#{selection} needs to be between 1 and #{@menu[:options].size},
      please try again"
      self.get_selection
    end
    # loop until user enters valid number
    rescue ArgumentError
    # if an ArgumentError occurs above, then ruby will come here instead of throwing
      # Error
    puts "#{input} is not an integer. Please select an integer"
    # putting self. here is not necissary in RUBY but will be in JS, so just
      # get used to using it. Okay?
    self.get_selection 
  end
end

