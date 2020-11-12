class Menu
  def initialize(menu)
    @menu = menu
  end

  # def print method
  def print

    # display menu message
    puts @menu[:message]
      
    @menu[:options].each do |item|
      puts "#{item}"
    end
      # loop over menu options, need to add logic to add 1) as well
  end
end

